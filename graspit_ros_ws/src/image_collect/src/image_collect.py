#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import sys
import time
import numpy
import rospy
import rosnode
from math import pi
from tf.transformations import quaternion_from_euler
from geometry_msgs.msg._Pose import Pose
from sensor_msgs.msg import Image
from gazebo_msgs.msg import ModelState
from gazebo_msgs.srv import SpawnModel, DeleteModel, SetModelState
import cv2
from cv_bridge import CvBridge

MODEL_PATH = '/home/peter/Softwares/Gazebo/objects/'
# DATA_PATH = '/data/object_grasp_ws/data/'
DATA_PATH = '/home/peter/Projects/object_grasp_ws/data/dataset/'

def generate_pose(pose=Pose(), px=0.0, py=0.0, pz=0.0, ox=0.0, oy=0.0, oz=0.0, ow=1.0):
    """Generate pose for robot and object.

    Args:
        pose: A pose msg from geometry_msgs.
        px: The x value for pose position.
        py: The y value for pose position.
        pz: The z value for pose position.
        ox: The x value for pose orientation.
        oy: The y value for pose orientation.
        oz: The z value for pose orientation.
        ow: The w value for pose orientation.

    Returns:
        pose: A pose msg from geometry_msgs.
    """
    pose.position.x = px
    pose.position.y = py
    pose.position.z = pz
    pose.orientation.x = ox
    pose.orientation.y = oy
    pose.orientation.z = oz
    pose.orientation.w = ow
    return pose

def spawn_model(obj_name):
    """Spawn object model in Gazebo.

    Args:
        obj_name: The object name.
    """
    rospy.wait_for_service('/gazebo/spawn_sdf_model')
    try:
        ros_spawn_model = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
        with open(MODEL_PATH+obj_name+'/'+obj_name+'.sdf', 'r') as f:
            obj_xml = f.read()
        robot_namespace = rospy.get_namespace()
        pose = generate_pose(pz=1.0)
        ros_spawn_model(obj_name, obj_xml, robot_namespace, pose, '')
    except rospy.ServiceException, e:
        print("Service call failed: " + e)

def delete_model(obj_name):
    """Delete object model in Gazebo.

    Args:
        obj_name: The object name.
    """
    rospy.wait_for_service('/gazebo/delete_model')
    try:
        ros_delete_model = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)
        ros_delete_model(obj_name)
    except rospy.ServiceException, e:
        print("Service call failed: " + e)

def generate_images(obj_name, direct_index):
    """Generate RGB image and depth image from a single direction.

    Args:
        obj_name: The object name.
        direct_index: Index of direction.
    """
    rospy.init_node('image_listener', anonymous=True)
    bridge = CvBridge()
    # Capture RGB Images
    # Have to access RGB images twice, otherwise capture image delay. I do not know why either.
    for _ in range(2):
        msg = rospy.wait_for_message('/camera/rgb/image_raw', Image)
    res_image = bridge.imgmsg_to_cv2(msg, 'rgb8')
    if not os.path.exists(DATA_PATH+obj_name+'/images_rgb/'):
        os.mkdir(DATA_PATH+obj_name+'/images_rgb/')
    numpy.save(DATA_PATH+obj_name+'/images_rgb/'+str(direct_index)+'_rgb.npy', res_image)
    cv2.imwrite(DATA_PATH+obj_name+'/images_rgb/'+str(direct_index)+'_rgb.png', res_image)
    # Capture Depth Images
    msg = rospy.wait_for_message('/camera/depth/image_raw', Image)
    res_image = bridge.imgmsg_to_cv2(msg, '32FC1')
    if not os.path.exists(DATA_PATH+obj_name+'/images_depth/'):
        os.mkdir(DATA_PATH+obj_name+'/images_depth/')
    numpy.save(DATA_PATH+obj_name+'/images_depth/'+str(direct_index)+'_depth.npy', res_image)
    cv2.normalize(res_image, res_image, 0, 1, cv2.NORM_MINMAX)
    res_image = (res_image * 255).astype(numpy.uint8)
    cv2.imwrite(DATA_PATH+obj_name+'/images_depth/'+str(direct_index)+'_depth.png', res_image)

def collect_images(obj_name, step_nums=5):
    """Generate RGB images and depth images from different directions.

    Args:
        obj_name: The object name.
        step_nums: Step number for collecting.
    """
    for i in range(step_nums):
        for j in range(step_nums):
            # Set pose for object
            q = quaternion_from_euler(0.0, i*(2*pi/step_nums), j*(2*pi/step_nums), 'rxyz')
            pose = generate_pose(px=0.0, py=0.0, pz=1.0, ox=q[0], oy=q[1], oz=q[2], ow=q[3])
            model_state = ModelState()
            model_state.model_name = obj_name
            model_state.pose = pose
            rospy.wait_for_service('/gazebo/set_model_state')
            try:
                set_model_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
                set_model_state(model_state)
            except rospy.ServiceException, e:
                print("Service call failed: " + e)
            time.sleep(0.1) # Wait after set model state
            generate_images(obj_name, step_nums*i+j)

def main():
    model_names = os.listdir(MODEL_PATH)
    model_names.sort()
    if len(sys.argv) == 1:
        block_index = 0
    else:
        block_index = int(sys.argv[1])
    for model_name in model_names:
        if int(model_name[:2]) >= 10:
            break
        if int(model_name[:2]) < block_index:
            continue
        print('Loading Model '+model_name+' ......')
        if not os.path.exists(DATA_PATH+model_name):
            os.mkdir(DATA_PATH+model_name)
        spawn_model(model_name)
        collect_images(model_name, step_nums=4)
        delete_model(model_name)

if __name__ == '__main__':
    main()
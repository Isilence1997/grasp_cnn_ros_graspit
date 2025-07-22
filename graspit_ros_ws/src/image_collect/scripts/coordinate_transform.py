#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import cv2
import numpy
import rospy
import pickle
import matplotlib.pyplot as plt
from math import pi
from tf.transformations import euler_matrix
from sensor_msgs.msg import CameraInfo
from gazebo_msgs.srv import SpawnModel
from geometry_msgs.msg._Pose import Pose

GAZEBO_MODEL_PATH_1 = '/home/peter/Softwares/Gazebo/models/'
GAZEBO_MODEL_PATH_2 = '/home/peter/Softwares/Gazebo/objects/'
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
        with open(GAZEBO_MODEL_PATH_2+obj_name+'/'+obj_name+'.sdf', 'r') as f:
            obj_xml = f.read()
        robot_namespace = rospy.get_namespace()
        pose = generate_pose(pz=1.0)
        ros_spawn_model(obj_name, obj_xml, robot_namespace, pose, '')
    except rospy.ServiceException, e:
        print("Service call failed: " + e)

def spawn_point(index, px, py, pz):
    """Spawn point in Gazebo.

    Args:
        index: Index of point.
        px: X value of point.
        py: Y value of point.
        pz: Z value of point.
    """
    obj_name = 'sphere_point_'+str(index)
    rospy.wait_for_service('/gazebo/spawn_sdf_model')
    try:
        ros_spawn_model = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
        with open(GAZEBO_MODEL_PATH_1+'sphere_point/model.sdf', 'r') as f:
            obj_xml = f.read()
        robot_namespace = rospy.get_namespace()
        pose = generate_pose(px=px, py=py, pz=pz)
        ros_spawn_model(obj_name, obj_xml, robot_namespace, pose, '')
    except rospy.ServiceException, e:
        print("Service call failed: " + e)

def world_to_image(point):
    """Transform point from world space to image space.

    Args:
        point: Point to be transformed.

    Returns:
        point_tf: Point after being transformed.
    """
    # rospy.init_node('camera_listener', anonymous=True)
    # msg = rospy.wait_for_message('/camera/rgb/camera_info', CameraInfo)
    # msg = rospy.wait_for_message('/camera_ir/depth/camera_info', CameraInfo)
    # inside param
    # p = numpy.array(msg.P).reshape((3, 4))
    p = numpy.array([[366.42291259765625, 0.0, 255.4647979736328, 0.0],
                     [0.0, 366.42291259765625, 210.0113983154297, 0.0],
                     [0.0, 0.0, 1.0, 0.0]])
    # p = numpy.array([[ 554.25597119    0.          320.5          -0.        ],
    #                  [   0.          554.25597119  240.5           0.        ],
    #                  [   0.            0.            1.            0.        ]])
    # outside param
    r = euler_matrix(pi/2, 0, pi/2, 'rxyz')
    r[:3, 3] = numpy.array([[0.0, 0.0, 1.00055]]) # 1.00055
    # transform
    point_tf = numpy.dot(p, numpy.dot(r, point))
    return point_tf

def contacts_world_to_image(obj_name):
    """Transform a set of contact points from world space to image space.

    Args:
        obj_name: Object whose contacts points to be transformed.
    """
    contacts_co = numpy.load(DATA_PATH+obj_name+'/contacts_co.npy')
    contacts_im = numpy.zeros(contacts_co.shape)
    # print(contacts_co.shape)
    directs, nums, fingers, _ = contacts_co.shape
    for d in range(directs):
        for n in range(nums):
            for f in range(fingers):
                contact = contacts_co[d][n][f]
                point = numpy.array([[contact[0], contact[1], contact[2], 1.0]]).T
                # transform
                point_tf = world_to_image(point)
                depth = point_tf[2][0]
                u = point_tf[0][0]/depth
                v = point_tf[1][0]/depth
                contacts_im[d][n][f] = [u, v, depth]
    numpy.save(DATA_PATH+obj_name+'/contacts_im.npy', contacts_im)

def dataset_world_to_image():
    """Transform contact points of whole dataset from world space to image space.
    """
    model_names = os.listdir(DATA_PATH)
    model_names.sort()
    for model_name in model_names:
        print('Transforming contacts_co.npy of '+model_name+' ......')
        contacts_world_to_image(model_name)

def main():
    dataset_world_to_image()

if __name__ == '__main__':
    main()
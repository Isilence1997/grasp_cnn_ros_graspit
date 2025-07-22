#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import cv2
import numpy
import rospy
import pickle
import matplotlib.pyplot as plt
from math import pi
from tf.transformations import euler_matrix, quaternion_matrix
from sensor_msgs.msg import CameraInfo
from gazebo_msgs.srv import SpawnModel
from geometry_msgs.msg._Pose import Pose

# EXP_PATH = '/data/og_exp_ws/data/'
EXP_PATH = '/home/peter/Projects/og_exp_ws/data/'

def world_to_image(point):
    """Transform point from world space to image space.

    Args:
        point: Point to be transformed.

    Returns:
        point_tf: Point after being transformed.
    """
    rospy.init_node('camera_listener', anonymous=True)
    msg = rospy.wait_for_message('/camera/rgb/camera_info', CameraInfo)
    # msg = rospy.wait_for_message('/camera_ir/depth/camera_info', CameraInfo)
    # inside param
    p = numpy.array(msg.P).reshape((3, 4))
    # p = numpy.array([[ 554.25597119    0.          320.5          -0.        ],
    #                  [   0.          554.25597119  240.5           0.        ],
    #                  [   0.            0.            1.            0.        ]])
    # outside param
    r = euler_matrix(pi/2, 0, pi/2, 'rxyz')
    r[:3, 3] = numpy.array([[0.0, 0.0, 1.00055]]) # 1.00055
    # transform
    point_tf = numpy.dot(p, numpy.dot(r, point))
    return point_tf

def point_val():
    image = cv2.imread(EXP_PATH+'/images_depth/'+str(0)+'_depth.png')
    plt.imshow(image)
    # plt.show()

    image_data = numpy.load(EXP_PATH+'/images_depth/'+str(0)+'_depth.npy')

    point = numpy.array([255, 241])
    depth = image_data[point[0], point[1]]
    point[0], point[1] = point[0] * depth, point[1] * depth
    point = numpy.append(point, depth)
    # print(point.shape)

    # inside param
    # rospy.init_node('camera_listener', anonymous=True)
    # msg = rospy.wait_for_message('/kinect2/sd/camera_info', CameraInfo)
    # p = numpy.array(msg.P).reshape((3, 4))
    p = numpy.array([[366.42291259765625, 0.0, 255.4647979736328, 0.0],
                     [0.0, 366.42291259765625, 210.0113983154297, 0.0],
                     [0.0, 0.0, 1.0, 0.0]])

    # outside param
    q = quaternion_matrix(numpy.array([-0.507482902564,
                                       -0.525089165021,
                                       0.492536002831,
                                       0.47344562338]))
    q[:3, 3] = numpy.array([[0.809523992963,
                             0.727259942135,
                             0.555307366595]])

    point_ca = numpy.dot(numpy.linalg.pinv(p), point)
    point_ca[3] = 1
    print(point_ca)

    # q = numpy.linalg.inv(q)
    point_tf = numpy.dot(q, point_ca)
    print(point_tf)

def main():
    point_val()

if __name__ == '__main__':
    main()
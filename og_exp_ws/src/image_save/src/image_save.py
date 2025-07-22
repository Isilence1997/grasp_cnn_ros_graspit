#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import sys
import numpy
import rospy
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge

# EXP_PATH = '/data/og_exp_ws/data/'
EXP_PATH = '/home/peter/Projects/og_exp_ws/data/'

def generate_images(index='0'):
    """Generate depth image from a single direction.

    Args:
        obj_name: The object name.
        direct_index: Index of direction.
    """
    rospy.init_node('image_listener', anonymous=True)
    bridge = CvBridge()
    # Capture RGB Images
    msg = rospy.wait_for_message('/kinect2/hd/image_color_rect', Image)
    res_image = bridge.imgmsg_to_cv2(msg, 'bgr8')
    if not os.path.exists(EXP_PATH+'/images_rgb/'):
        os.mkdir(EXP_PATH+'/images_rgb/')
    numpy.save(EXP_PATH+'/images_rgb/'+str(index)+'_rgb.npy', res_image)
    cv2.imwrite(EXP_PATH+'/images_rgb/'+str(index)+'_rgb.png', res_image)
    # Capture Depth Images
    msg = rospy.wait_for_message('/kinect2/sd/image_depth_rect', Image)
    # msg = rospy.wait_for_message('/kinect2/qhd/image_depth_rect', Image)
    res_image = bridge.imgmsg_to_cv2(msg, '32FC1')
    # res_image = res_image / 1000
    res_image = res_image[210:310, 200:300] / 1000
    # smooth depth of edge
    margin = 6
    for i in range(res_image.shape[0]):
        for j in range(res_image.shape[1]):
            if res_image[i, j] < 0.8:
                if i - margin < 0:
                    up, down = 0, margin
                elif i + margin > res_image.shape[0] - 1:
                    up, down = res_image.shape[0]-1-margin, res_image.shape[0]-1;
                else:
                    up, down = i-margin, i+margin
                if j - margin < 0:
                    left, right = 0, margin
                elif j + margin > res_image.shape[1] - 1:
                    left, right = res_image.shape[1]-1-margin, res_image.shape[1]-1;
                else:
                    left, right = j-margin, j+margin
                res_image[i, j] = numpy.mean(res_image[up: down, left: right])
    # print(numpy.max(res_image), numpy.min(res_image))
    if not os.path.exists(EXP_PATH+'/images_depth/'):
        os.mkdir(EXP_PATH+'/images_depth/')
    numpy.save(EXP_PATH+'/images_depth/'+str(index)+'_depth.npy', res_image)
    cv2.normalize(res_image, res_image, 0, 1, cv2.NORM_MINMAX)
    res_image = (res_image * 255).astype(numpy.uint8)
    cv2.imwrite(EXP_PATH+'/images_depth/'+str(index)+'_depth.png', res_image)

def main():
    if len(sys.argv) == 1:
        index = 0
    else:
        index = sys.argv[1]
    generate_images(index)

if __name__ == '__main__':
    main()
#!/usr/bin/env python
#coding:utf-8
import os
import rospy
from sensor_msgs.msg import Image, PointCloud2
from sensor_msgs import point_cloud2
import cv2
import copy
from cv_bridge import CvBridge
import sys
import numpy as np
import time

def points_callback(data,args):
    gen = point_cloud2.read_points(data,skip_nans = False)
    rospy.sleep(1)
    normal_points = np.array(list(gen))
    normal_points = np.reshape(normal_points, (480, 640, 4))
    normal_points[np.logical_or(np.logical_or(np.isinf(normal_points), np.isneginf(normal_points)),
                                    np.isnan(normal_points))] = 0
    normal = normal_points
    for i in xrange(3):
        normal[:, :, i] = 255. * (normal[:, :, i] - np.min(normal[:, :, i])) / \
                (np.max(normal[:, :, i]) - np.min(normal[:, :, i]))
    normal = normal.astype('uint8')
    cv2.imwrite(args[0], normal)

    curv = normal_points[:,:,3]
    curv = 255. * (curv - np.min(curv)) / (np.max(curv) - np.min(curv))
    cv2.imwrite(args[1], curv)

def load_model(sdf_path,name):
    #加载模型文件
    file_path = sdf_path
    #name = '"model"'
    command = 'rosrun gazebo_ros spawn_model -sdf -file ' + file_path + ' -model ' + '\"' + name +'\"'
    os.system(command)

def del_model(name):
    #删除模型文件
    command = 'rosservice call /gazebo/delete_model "model_name: ' +'\'' + name + '\'' +'\"'
    os.system(command)

def generate_images(num):
    rospy.init_node('collect_image', anonymous = True)
    #订阅image topic 并保存
    bridge = CvBridge()
    SAVE_PATH = '/home/hhy/simulation_data3.0/'
    rgb_path = SAVE_PATH + 'rgb_image/'+num+'.png'
    if not os.path.exists(SAVE_PATH+'rgb_image/'):
        os.mkdir(SAVE_PATH+'rgb_image/')
   # msg = rospy.wait_for_message('/camera/color/image_raw', Image)
    msg = rospy.wait_for_message('/kinect/rgb/image_raw', Image)
    res_image = bridge.imgmsg_to_cv2(msg, 'rgb8')
    cv2.imwrite(rgb_path, res_image)  
    
    depth_path = SAVE_PATH + 'depth/'+num+'.png'
    new_depth_path = SAVE_PATH + 'depth/'+num+'_new.png'
    if not os.path.exists(SAVE_PATH+'depth/'):
        os.mkdir(SAVE_PATH+'depth/')
    
    #msg = rospy.wait_for_message('/camera/depth/image_raw', Image)
    msg = rospy.wait_for_message('/kinect/depth/image_raw', Image)
    res_image = bridge.imgmsg_to_cv2(msg, '32FC1')
    cv2.normalize(res_image, res_image, 0, 1, cv2.NORM_MINMAX)
    res_image = (res_image * 255).astype(np.uint8)
    cv2.imwrite(depth_path, res_image)
    picture_process(depth_path,new_depth_path)


def picture_process(depth_path,new_depth_path):
    res_image = cv2.imread(depth_path)  
    shape = res_image.shape
    temp = res_image[424][213]
    for i in range(424,shape[0]):
        for j in range(shape[1]):
            res_image[i][j]=temp
    print res_image
    cv2.imwrite(new_depth_path,res_image)

def collect_images():
    del_model('object')
    for num in range(65):
        print num
        sdf_path = '/home/hhy/simulation_data3.0/gazebo_data/sdf_file/o' + str(num) +'.sdf'
        # print sdf_path
        load_model(sdf_path,'object')
        time.sleep(0.1)
        generate_images(str(num))
        del_model('object')

if __name__ == '__main__':
    if len(sys.argv) > 1:
        #del_model('object')
        num = sys.argv[1]
        sdf_path = '/home/hhy/simulation_data3.0/gazebo_data/sdf_file/o' + str(num) +'.sdf'
        load_model(sdf_path,'object')
        print 'input s to start:'  #保存世界文件,以及保存图像文件
        if raw_input() == 's':
            pass
            generate_images(num)
            del_model('object')
    else:
        collect_images()
    exit()


    
   




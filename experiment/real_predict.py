#!/usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import division

from PIL import Image

import sys
#import h5py
import numpy as np
import tensorflow as tf
from tensorflow import keras
import tensorflow.keras.backend as K
from tensorflow.keras.preprocessing import image
import scipy.io as scio
import os
import pickle
import json
import cv2

def normalizeImag(img):
    img_max = 255.0
    img_min = 0
    if img_max == img_min:
        return img[:, :, 0:1]
    img_normal = (img[:, :, 0:1]-img_min)/(img_max-img_min)
    return img_normal

def limit(limit_min,limit_max,a):
    for index, i in enumerate(a):
        if i < limit_min[index]:
            a[index]=limit_min[index]
        elif i > limit_max[index]:
            a[index] = limit_max[index]
    return a

def old_predict(index='01'):
#first:load picture and processing
    depth_path = EXP_PATH+'depth/'+str(index)+'.jpg'
    depth_img = image.img_to_array(image.load_img(depth_path))
    depth_img0 = normalizeImag(depth_img)    #归一化后的深度图
       # cv2.imwrite(EXP_PATH+'/images_depth/'+str(index)+'.jpg', depth_img)
        
    patch_path = EXP_PATH+'patch/'+str(index)+'.jpg'
    patch = image.img_to_array(image.load_img(patch_path))
    patch_img0 = normalizeImag(patch)       #归一化后的抓取框所在深度图像块

     #   f = open(EXP_PATH+'zxyzws/zxyzw_'+str(index)+'.txt', 'rb')
      #  zxyzw = json.load(fp=f)
      #  f.close() #抓取位姿数据矩阵化
    data =scio.loadmat(EXP_PATH+'zxyzws/zxyzw_'+str(index)+'.mat')
    zxyzws = data['zxyzw']

    patches = []
    depthes = []
        #zxyzws = []

    patches.append(patch_img0)
    depthes.append(depth_img0)
        #zxyzws.append(zxyzw)
    
    patches = np.array(patches)
    depthes = np.array(depthes)      #深度图矩阵化
        #zxyzws = np.array(zxyzws)   
    
    postures = model1.predict([patches, depthes,zxyzws])  #posture是预测的抓取位姿
    if not os.path.exists(EXP_PATH+'/postures/'):
        os.mkdir(EXP_PATH+'/postures/')
    f = open(EXP_PATH+'/postures/init_postures.txt' , 'wb')
    pickle.dump(postures, f, 0)    #序列化对象a，将其保存到文件file中去，0模式是以文本方式序列化
    f.close()    
    
    postures = np.array(postures) #(1,16)
    pre_hand=dict(zip(graspit_names, postures[0]))
    for key in pre_hand:
        if key == 'rh_RFJ4' or key == 'rh_MFJ4' or key == 'rh_FFJ4':
            pre_hand[key] = -pre_hand[key]
    print(pre_hand)#输出16维手势

def new_predict(index='01'):
#first:load picture and processing
    print('input s to start:')
    if raw_input() == 's': #输入s开始优化
        pass
        
    depth_path = EXP_PATH+'depth/'+str(index)+'.jpg'
    depth_img = image.img_to_array(image.load_img(depth_path))
    depth_img0 = normalizeImag(depth_img)    #归一化后的深度图
       # cv2.imwrite(EXP_PATH+'/images_depth/'+str(index)+'.jpg', depth_img)
        
    patch_path = EXP_PATH+'patch/'+str(index)+'.jpg'
    patch = image.img_to_array(image.load_img(patch_path))
    patch_img0 = normalizeImag(patch)       #归一化后的抓取框所在深度图像块

     #   f = open(EXP_PATH+'zxyzws/zxyzw_'+str(index)+'.txt', 'rb')
      #  zxyzw = json.load(fp=f)
      #  f.close() #抓取位姿数据矩阵化
    data =scio.loadmat(EXP_PATH+'zxyzws/zxyzw_'+str(index)+'.mat')
    zxyzws = np.array(data['zxyzw'])

    patches = []
    depthes = []
        #zxyzws = []

    patches.append(patch_img0)
    depthes.append(depth_img0)
        #zxyzws.append(zxyzw)

    patches = np.array(patches)
    depthes = np.array(depthes)      #深度图矩阵化
        #zxyzws = np.array(zxyzws)   
    #zxyzws[0]=[[-0.024616236559945465, 0.34260897314175953, 0.14202071254637122, 0.9271975286244198, -0.052478106323860775]]
    postures = model1.predict([patches, depthes, zxyzws])  #posture是预测的抓取位姿
    postures = np.array(postures)      #(1,16)
    if not os.path.exists(EXP_PATH+'/postures/'):
        os.mkdir(EXP_PATH+'/postures/')
    f = open(EXP_PATH+'/postures/init_postures.txt' , 'wb')
    pickle.dump(postures, f, 0)    #序列化对象a，将其保存到文件file中去，0模式是以文本方式序列化
    f.close()    
    
    pre_hand=dict(zip(graspit_names, postures[0]))
    for key in pre_hand:
        if key == 'rh_RFJ4' or key == 'rh_MFJ4' or key == 'rh_FFJ4':
            pre_hand[key] = -pre_hand[key]
    print(pre_hand)  #输出16维初始手势
        
    gradient = K.gradients(model2.output, model2.input)[3] #定义梯度gradient,output里的每一个函数对input中的每一个变量求偏导,
    iterate = K.function(model2.input, [gradient]) 

    grasp_confs_final = []
    final_qualities = []

    for times in range(10):
        print('%d times:' % times)
        q0 = model2.predict([patches, depthes, zxyzws, postures])
        print('quality: %f' % q0[0][0])
        #with tf.GradientTape() as tape:
        #    grad = tape.gradient(q0, [patches, depthes, zxyzws, postures])[3]
        grad = iterate([patches, depthes, zxyzws, postures]) #grad.size=(1,16)
        print ('gradient:', grad[0])
        alpha = 0.3
        t = 1
        beta = 0.8

        posture_new = postures[0] + t * grad[0]  # 维度为16
        posture_new = limit(limit_min, limit_max, posture_new[0])
        posture_new = posture_new[np.newaxis, :]  #增加维度，变为（1,16）
        q_new = model2.predict([patches, depthes, zxyzws, posture_new])

        maxtimes = 0
        while q_new < q0 + alpha * t * np.dot(grad[0][0].T, grad[0][0]):
            # while q_new < q0:
            t = beta * t
            posture_new = postures[0] + t * grad[0]
            posture_new = limit(limit_min, limit_max, posture_new[0])
            posture_new = posture_new[np.newaxis, :]
            q_new = model2.predict([patches, depthes, zxyzws, posture_new])
            if maxtimes > 10:
                break    #maxtinmes后停止迭代
            print('new_quality= %f'% q_new[0][0])
            print('t= %f' %t)
            maxtimes += 1

        postures = posture_new

    final_qualities.append(q_new[0][0].item())
    final = zxyzws[0].tolist() + postures[0].tolist()# grasp_confs=zxyzw+posture
    grasp_confs_final.append(final)

    f = open(EXP_PATH+'postures/posture_'+str(index)+'.txt' , 'wb')
    pickle.dump(postures, f, 0)    #序列化posture，将其保存到文件file中去，0模式是以文本方式序列化
    f.close() 

    if not os.path.exists(EXP_PATH+'/grasp_confs/'):
        os.mkdir(EXP_PATH+'/grasp_confs/')
    confs_save_path = EXP_PATH+'grasp_confs/final_grasp_confs_'+str(index)+'.txt'
    f = open(confs_save_path, 'wb')
    json.dump(grasp_confs_final, f)
    f.close()
        
    if not os.path.exists(EXP_PATH+'/quality/'):
        os.mkdir(EXP_PATH+'/quality/')
    final_qualities_path = EXP_PATH+'quality/final_quality_' + str(index) + '.txt'
    f = open(final_qualities_path, 'w')
    json.dump(final_qualities, f)
    f.close()

    pre_hand=dict(zip(graspit_names, postures[0]))
    for key in pre_hand:
        if key == 'rh_RFJ4' or key == 'rh_MFJ4' or key == 'rh_FFJ4':
            pre_hand[key] = -pre_hand[key]
    print(pre_hand)
  #  rospy.spin()

if __name__ == '__main__':
    
    if len(sys.argv) == 1:
        index = '01'
    else:
        index = sys.argv[1] #number of this test
#first:load picture and processing
    tf.compat.v1.disable_eager_execution()
    EXP_PATH = '/home/peter/Desktop/shiyan/data/'
    graspit_names = ['rh_RFJ4', 'rh_RFJ3', 'rh_RFJ2', 'rh_RFJ1',
              'rh_MFJ4', 'rh_MFJ3', 'rh_MFJ2', 'rh_MFJ1',
              'rh_FFJ4', 'rh_FFJ3', 'rh_FFJ2', 'rh_FFJ1',
              'rh_THJ5', 'rh_THJ4', 'rh_THJ2', 'rh_THJ1']
    hand_names = ['rh_FFJ1', 'rh_FFJ2', 'rh_FFJ3', 'rh_FFJ4',
                  'rh_MFJ1', 'rh_MFJ2', 'rh_MFJ3', 'rh_MFJ4',
                  'rh_RFJ1', 'rh_RFJ2', 'rh_RFJ3', 'rh_RFJ4',
                  'rh_THJ1', 'rh_THJ2', 'rh_THJ4', 'rh_THJ5']
    model1 = keras.models.load_model('/home/peter/Desktop/shiyan/data/model/CNN-5.h5')
    model2 = keras.models.load_model('/home/peter/Desktop/shiyan/data/model/model.h5',
                                                 custom_objects={'keras': keras, 'tf': tf})
    limit_min = [-0.3490, 0, 0, 0,
                 -0.3490, 0, 0, 0,
                 -0.3490, 0, 0, 0,
                 -1.047, 0, -0.3490, 0] #将rh_THJ2范围设为[-20°,30°]
    limit_max = [0.3490, 1.57, 1.157, 1.57,
                 0.3490, 1.57, 1.157, 1.57,
                 0.3490, 1.57, 1.157, 1.57,
                 1.047, 1.222, 0.5236, 1.57]
    new_predict(index)
    #old_predict(index)


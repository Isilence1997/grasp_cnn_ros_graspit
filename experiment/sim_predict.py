# coding:utf-8 
from __future__ import print_function
import numpy as np
import random
import pickle
import os
import sys
import h5py
defaultencoding = 'utf-8'
#import keras
#from keras.preprocessing import image
#import keras.backend as K
#from keras.models import Model
#import tensorflow as tf
import json
import tensorflow as tf
from tensorflow import keras
import tensorflow.keras.backend as K
from tensorflow.keras.preprocessing import image


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
def optimize_posture(i,zxyzw,posture_init,patch,overall):
    '''
    params: i,抓取index zxyzw，posture_init：一维数组
    output：final_quality,posture_old优化后的抓取质量和手势
    '''
    print("the %dth posture:" %i)
    posture_old = posture_init
    zxyzw = zxyzw[np.newaxis, :]
    posture_old = posture_old[np.newaxis, :]
    patch = patch[np.newaxis, :]
    overall = overall[np.newaxis,:]
    init_quality = model1.predict([patch, overall, zxyzw, posture_old])
        #print("init_quality=%f" %init_quality[0][0])
    gradient = keras.backend.gradients(model1.output, model1.input)[3]
    iterate = keras.backend.function(model1.input, [gradient])

    for times in range(100):
        q_old = model1.predict([patch, overall, zxyzw, posture_old])
        grad = iterate([patch, overall, zxyzw, posture_old])
            #print(type(grad))
        print("times = %d" %times)
        print("gradient = ",grad[0][0])
        alpha = 0.3
        t = 1.0
        beta = 0.8
            
        posture_new = posture_old + t * grad[0]  # shape(1,23)
        posture_new = limit(limit_min, limit_max, posture_new[0])
        posture_new = posture_new[np.newaxis, :]
        q_new = model1.predict([patch, overall, zxyzw, posture_new])

        maxtimes = 0
        while q_new < q_old + alpha * t * np.dot(grad[0][0].T, grad[0][0]) :
                        # while q_new < q_old:
            if maxtimes > 10: #最多11次
                print("maxtimes!")
                break
            t = beta * t
            posture_new = posture_old + t * grad[0]
            posture_new = limit(limit_min, limit_max, posture_new[0])
            posture_new = posture_new[np.newaxis, :]
            q_new = model1.predict([patch, overall, zxyzw, posture_new])
                #print("new_quality = %f" %q_new[0][0])
                #print("t = %f" %t)
            maxtimes += 1
        print("t = %f" %t)
        print("new_quality = %f" %q_new[0][0])
        posture_old = posture_new
    
    print("init_quality=%f" %init_quality[0][0])        
    final_quality=[init_quality[0][0].item(),q_new[0][0].item()]
    pre_hand=dict(zip(graspit_names, posture_old[0]))
    for key in pre_hand:
        if key == 'rh_RFJ4' or key == 'rh_MFJ4' or key == 'rh_FFJ4':
            pre_hand[key] = -pre_hand[key]
    #print(pre_hand)
    return final_quality,posture_old

def sim_test(index):
    '''
    对第index个物体的所有仿真抓取进行位姿优化
    '''
    num=int(index)
    
    final_qualities = []
    depth_patches = []
    global_depthes = []
    final_postures = []

    #depthes_path = DATA_PATH+'good_palm_depth_patches/' + str(num) +'/'
    depthes_path = DATA_PATH+'patches/' + str(num) +'/'
    patch_files = os.listdir(depthes_path)
    patch_files.sort(key= lambda x: int(x[:-4]))
    
    zxyzws_path = DATA_PATH+'100zxyzws/'+str(num)+ '.txt'
    f = open(zxyzws_path,'r')
    zxyzws = json.load(fp=f)
    f.close()

    global_path = '/home/hhy/simulation_data3.0/overall/' + str(num) + '.jpg'
    global_depth = image.img_to_array(image.load_img(global_path))
    global_depth = normalizeImag(global_depth)  # (128,128,1)
    global_depthes.append(global_depth)
    
    for j in patch_files:
        print(j)
        depth_path = depthes_path + j
        depth = image.img_to_array(image.load_img(depth_path))
        depth = normalizeImag(depth)
        depth_patches.append(depth)

    posture_path = DATA_PATH + 'noTH3dofs/' + str(num) + '.txt'
    f = open(posture_path,'rb')
    postures = pickle.load(f)
    f.close()

    depth_patches = np.array(depth_patches)
    global_depthes = np.array(global_depthes)
    zxyzws = np.array(zxyzws)
    postures = np.array(postures)
    print(len(global_depthes),len(depth_patches),len(zxyzws),len(postures))
 

    #gradient = keras.backend.gradients(model1.output, model1.input)[3]
    #iterate = keras.backend.function(model1.input, [gradient])

    #bad_index_path = DATA_PATH+'good_quality/bad_index/' + str(num) +'.txt'
    #f = open(bad_index_path,'r')
    #bad_index = json.load(fp=f)
    #f.close()
    #for i in bad_index: #只测试失败抓取示例
    for i in range(len(postures)): #测试当前物体的所有posture
    #for i in range(7,8): #只测试一个抓取
        final_quality,final_posture = optimize_posture(i,zxyzws[i],postures[i],depth_patches[i],global_depthes[0])    
        final_qualities.append(final_quality)
        final_postures.append(final_posture)
    if not os.path.exists(DATA_PATH+'test_quality/'):
        os.mkdir(DATA_PATH+'test_quality/')
    if not os.path.exists(DATA_PATH+'final_postures/'):
        os.mkdir(DATA_PATH+'final_postures/')
    final_qualities_path = DATA_PATH + 'test_quality/' + str(num) + '.txt'
    f = open(final_qualities_path, 'w')
    json.dump(final_qualities, f) #保存优化后的抓取质量
    f.close()
    f = open(DATA_PATH+'final_postures/'+str(num)+'.txt' , 'wb')
    pickle.dump(final_postures, f, 0)    #序列化posture，将其保存到文件file中去，0模式是以文本方式序列化
    f.close() 

#def sim_testFailure(index): #只对数据集外的失败抓取进行测试
	#num = index
	#bad_index_path = DATA_PATH+'good_quality/bad_index/' + str(num) +'.txt'
	#f = open(bad_index_path,'r')
	#bad_index = json.load(fp=f)
    #f.close()
    #for i in bad_index:

if __name__ =='__main__':

    graspit_names = ['rh_RFJ4', 'rh_RFJ3', 'rh_RFJ2', 'rh_RFJ1',
              'rh_MFJ4', 'rh_MFJ3', 'rh_MFJ2', 'rh_MFJ1',
              'rh_FFJ4', 'rh_FFJ3', 'rh_FFJ2', 'rh_FFJ1',
              'rh_THJ5', 'rh_THJ4', 'rh_THJ2', 'rh_THJ1']
    hand_names = ['rh_FFJ1', 'rh_FFJ2', 'rh_FFJ3', 'rh_FFJ4',
                  'rh_MFJ1', 'rh_MFJ2', 'rh_MFJ3', 'rh_MFJ4',
                  'rh_RFJ1', 'rh_RFJ2', 'rh_RFJ3', 'rh_RFJ4',
                  'rh_THJ1', 'rh_THJ2', 'rh_THJ4', 'rh_THJ5']
    model1 = keras.models.load_model('/home/hhy/simulation_data5.0/model.h5',
                                         custom_objects={'keras': keras, 'tf': tf})
    limit_min = [-0.3490, 0, 0, 0,
                 -0.3490, 0, 0, 0,
                 -0.3490, 0, 0, 0,
                 -1.047, 0, -0.3490, 0] #将rh_THJ2范围设为[-20°,30°]
    limit_max = [0.3490, 1.57, 1.157, 1.57,
                 0.3490, 1.57, 1.157, 1.57,
                 0.3490, 1.57, 1.157, 1.57,
                 1.047, 1.222, 0.5236, 1.57]
    DATA_PATH='/home/hhy/simulation_data3.0/bad_graspit_data/'
    #DATA_PATH='/home/hhy/simulation_data5.0/'
    if len(sys.argv) > 1:
        index = sys.argv[1] #number of this test
        sim_test(index)
    else:
        for i in range(23):
            index = str(i)
            sim_test(index)
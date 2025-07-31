
# coding:utf-8
from __future__ import division
import numpy as np
import pickle
import json
import h5py
import os
import random
# from PIL import Image
import tensorflow as tf
from tensorflow import keras

from keras.preprocessing import image
from keras.layers import Conv2D,Input,Dense,Lambda
from keras.layers import MaxPooling2D,Activation
from keras.layers import Flatten,Concatenate,Dropout,Reshape
from keras.layers.normalization import BatchNormalization
from keras.optimizers import Adam, SGD
from keras.models import Model
from keras.callbacks import History, ModelCheckpoint,TensorBoard
from keras.utils import plot_model
import matplotlib.pyplot as plt

#由于keras中训练时是先划分数据集再打乱,所以我们要先打乱数据集合
import sys


def normalizeImag(img):
    img_max = 255.0
    img_min = 0.0
    img_normal = (img[:, :, 0:1]-img_min)/(img_max-img_min)
    return img_normal

def normalize_imag(img):
    img_max = 255.0
    img_min = 0.0
    img_normal = img
    for i in range(3):
        img_normal[:,:,i] = (img[:,:,i]-img_min)/(img_max-img_min)
    return img_normal


def normalizeOut(out):
    out_max = 0.12
    out_min = 0.0
    out_normal = (out-out_min)/(out_max-out_min)    
    print(out_max)
    return out_normal

def shuffle_data(*params):
    '''
    :param params:数据列表
    :return: 打乱后的数据
    '''
    params_num = len(params)
    length = len(params[0])
    index = np.random.permutation(length)
    result = []
    for i in range(params_num):
        result.append([])
    for i in index:
        for j in range(params_num):
            result[j].append(params[j][i])

    return result


def tile(x):
    x = keras.backend.expand_dims(x, axis=1)
    x = keras.backend.expand_dims(x, axis=2)
    out = keras.backend.tile(x, [1,47,47,1])
    return out

if __name__ == "__main__":

    depth_patches = []
    global_depthes= [] 
    poses = []
    qualities = []  
    dofs = []  
    DATA_PATH='/home/hhy'
    #good_data
    for i in range(65):

        bad_index_path = DATA_PATH+'/simulation_data5.0/good_quality/bad_index/' + str(i) + '.txt'
        f = open(bad_index_path,'r')
        bad_index = json.load(f)
        f.close

        depthes_path = DATA_PATH+'/simulation_data5.0/good_palm_depth_patches/' + str(i) +'/'
        patch_files = os.listdir(depthes_path)
        patch_files.sort(key= lambda x: int(x[:-4]))

        zxyzws_path = DATA_PATH+'/simulation_data5.0/100zxyzws/'+str(i)+ '.txt'
        f = open(zxyzws_path,'r')
     #   pose = json.load(fp=f)
        f.close()

        graps_dofs_path = DATA_PATH+'/simulation_data5.0/noTh3dofs/' +str(i)+ '.txt'
        f = open(graps_dofs_path,'rb')
        posture = pickle.load(f)
        f.close()
        
        temp = bad_index[::-1]
        print(temp)
        if len(bad_index) > 0:         
            for index in temp:
                del pose[index],posture[index]

        poses += pose
        dofs += posture
        
        quality_path = DATA_PATH+'/simulation_data5.0/good_quality/' + str(i) + '.txt'
        f = open(quality_path,'r')
        qualities += json.load(f) #碰撞导致失败的并没有加入quality
        f.close()
        

        global_path = DATA_PATH+'/simulation_data3.0/depth/' + str(i) + '.jpg'
        for j in patch_files:
            #print(j[:-4])
            if int(j[:-4]) in temp:
                print(j[:-4])
                continue
            print(j)
            depth_path = depthes_path + j
            depth = image.img_to_array(image.load_img(depth_path))
            depth = normalizeImag(depth)
            depth_patches.append(depth)    

            global_depth = image.img_to_array(image.load_img(global_path))
            global_depth = normalizeImag(global_depth) #(128,128,1)            
            global_depthes.append(global_depth)
        
    print(len(depth_patches),len(qualities),len(dofs),len(poses),len(global_depthes))

   # zero_index = []
    #for index,it in enumerate(qualities):
    #    if it > 0.12:
    #        zero_index.append(index)
    #print(zero_index)
    #zero_index = zero_index[::-1]
    #print(zero_index)
    #for i in zero_index:
     #   del depth_patches[i],poses[i],dofs[i],qualities[i],global_depthes[i]
    #print(len(depth_patches),len(qualities),len(dofs),len(poses),len(global_depthes))

    data = shuffle_data(depth_patches,poses,dofs,qualities,global_depthes)
    depth_in = np.array(data[0])
    poses_in = np.array(data[1])
    dofs_in = np.array(data[2])
    qualities_out = normalizeOut(np.array(data[3])) #quality/0.12
    global_in = np.array(data[4])
    

    #print(qualities_out)

    img_input = Input(shape=(64, 128, 1))
    x = Conv2D(32, (6, 6),strides=(2, 2))(img_input)
    x = BatchNormalization()(x) #BN层在每个batch上将前一层的激活值重新规范化，即使得其输出数据的均值接近0，其标准差接近1
    x = Activation('relu')(x)
    x = Conv2D(8, (3, 3),strides=(2, 2))(x)
    x = BatchNormalization()(x)
    x = Activation('relu')(x)
    x = MaxPooling2D((2, 2))(x)
    img_out = Flatten()(x)

    img_input1 = Input(shape=(128, 128, 1))
    x1 = Conv2D(32, (12, 12),strides=(2, 2))(img_input1)
    x1 = BatchNormalization()(x1)
    x1 = Activation('relu')(x1)
    x1 = Conv2D(8, (6, 6),strides=(2, 2))(x1)
    x1 = BatchNormalization()(x1)
    x1 = Activation('relu')(x1)
    x1 = MaxPooling2D((2, 2))(x1)
    img_out1 = Flatten()(x1)

    pose_input = Input(shape=(5,))
    y = BatchNormalization()(pose_input)
    y = Dense(32)(y)
    y = BatchNormalization()(y)
    y = Activation('relu')(y)
    y = Dense(32)(y)
    y = BatchNormalization()(y)
    pose_out = Activation('relu')(y)

    posture_input = Input(shape=(16,))
    w = BatchNormalization()(posture_input)
    w = Dense(64)(w)
    w = BatchNormalization()(w)
    w = Activation('relu')(w)
    w = Dense(64)(w)
    w = BatchNormalization()(w)
    posture_out = Activation('relu')(w)

    rgbd_config_concat = keras.layers.concatenate([img_out,img_out1,pose_out,posture_out])
    print(rgbd_config_concat.shape)
    z = Dense(1000)(rgbd_config_concat)
    z = BatchNormalization()(z)
    z = Activation('relu')(z)
    z = Dense(100)(z)
    z = BatchNormalization()(z)
    z = Activation('relu')(z)
    z = Dense(64)(z)
    z = BatchNormalization()(z)
    z = Activation('relu')(z)
    z = Dense(32)(z)
    z = BatchNormalization()(z)
    z = Activation('relu')(z)
    z = Dense(1)(z)
    z = BatchNormalization()(z)
    out = Activation('relu')(z)

    adam =Adam(lr=0.00003)
    model = Model(inputs=[img_input, img_input1,pose_input,posture_input], outputs=out)
    model.compile(optimizer=adam, loss='mean_squared_error')

    #修改
    plot_model(model,to_file='gqpn.png')
    #修改
    checkpoint = ModelCheckpoint('GQPN.h5', monitor='val_loss', verbose=1, save_best_only=True, mode=min)
    tb_callback = TensorBoard(log_dir='./GQPN',histogram_freq=0,write_images=False,write_graph=True)
    history = model.fit([depth_in,global_in,poses_in,dofs_in], qualities_out, batch_size=20, epochs=5000, validation_split=0.2, callbacks=[checkpoint,tb_callback])
    #plot loss value
    plt.plot(history.history['val_acc'])
    plt.plot(history.history['val_loss'])
    plt.title('model loss and acc')
    plt.ylabel('Loss/Acc')
    plt.xlabel('Epoch')
    plt.legend(['acc','loss'],loc='upper_right')
    plt.show()
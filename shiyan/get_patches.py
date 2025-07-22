# -*- coding: utf-8 -*-
'''
批量处理数据集中的深度图
'''
import os
import pickle
import numpy as np
import sys
from get_pose import (
     get_pose,
     get_wTo,
     pose2patch,
)
from get_patch import get_patch

def grasp2pose(grasp_path,save_path):
    '''
    将抓取数据转换为pose文件
    :param grasp_file:graspit中的数据格式
    :param save_file:pose要存储的文件
    :return:
    '''
    f = open(grasp_path,'r')
    grasps = pickle.load(f)
    f.close()
    poses = []
    for grasp in grasps:
        poses.append(grasp.pose)
    f = open(save_path,'w')
    pickle.dump(poses,f,0)
    f.close()

def grasp2dof(grasp_path,save_path):
    '''
    将抓取数据转换为pose文件
    :param grasp_file:graspit中的数据格式
    :param save_file:pose要存储的文件
    :return:
    '''
    f = open(grasp_path,'r')
    grasps = pickle.load(f)
    f.close()
    dofs = []
    for grasp in grasps:
        dofs.append(grasp.dofs)
    f = open(save_path,'w')
    pickle.dump(dofs,f,0)
    f.close()
def delete_TH3(dofs_path,save_path):
    '''
    删除dof中的TH3关节
    '''
    f = open(dofs_path,'r')
    dofs = pickle.load(f)
    f.close()
    noTH3_dofs = []
    for i,index in enumerate(dofs):
        index=list(index) #dof为tuple格式，不可修改，转换为list
        del index[14]
        #index = np.delete(index,14) #dof第15位固定为0，将它删掉
        #print index
        noTH3_dofs.append(index)
    #print noTH3_dofs
    f = open(save_path,'wb')
    pickle.dump(noTH3_dofs,f,0)
    f.close()
def add_TH3(noTH3dofs_path,save_path):
    '''
    加上posture的TH3关节
    '''
    f = open(noTH3dofs_path,'r')
    noTH3dofs = pickle.load(f)
    f.close()
    dofs = []
    for i,index in enumerate(noTH3dofs):
        #index.insert(14,0.0) #list插入元素
        index = np.insert(index,14,[0.0]) #在array第14位插入0
        #print index
        dofs.append(index)
    #print noTH3_dofs
    f = open(save_path,'wb')
    pickle.dump(dofs,f,0)
    f.close()
def save_poseAnddofs():
    '''
    将所有物体的抓取数据转换成总的pose和dofs并保存
    '''
    grasps_pose = []
    grasps_dofs = []
    sum = 0
    data_path = '/home/hhy/simulation_data3.0/test1/graspit_data/'
    for index in range(65):
        grasp_path = data_path + str(index) + '/'
        grasp_files = os.listdir(grasp_path)
        grasp_files.sort()
    # grasp_files = sorted(grasp_files, key=lambda x: os.path.getmtime(os.path.join(grasp_path, x)))  # 按文件时间进行排序
        files_num = len(grasp_files)
    # print(files_num)


        for i in range(files_num):
            grasp_file = grasp_path + grasp_files[i]
            print(grasp_file)
            f = open(grasp_file, 'r')
            grasps = pickle.load(f)
            sum += len(grasps)

            for j in range(len(grasps)):
                grasps_pose.append(grasps[j].pose)
                grasps_dofs.append(grasps[j].dofs)
            f.close()
    f = open('/home/hhy/simulation_data3.0/test1/grasps_pose.txt', 'w')
    pickle.dump(grasps_pose, f, 0)
    f.close()
    f = open('/home/hhy/simulation_data3.0/test1/grasps_dofs.txt', 'w')
    pickle.dump(grasps_dofs, f, 0)
    f.close()
    print(sum)

def test(index):
    '''
    测试graps_pose和grasps_dofs中的数据与graspit_data文件夹中的数据对应
    :param index: grasp_pose中的索引
    :return:
    '''
    g_index = index
    data_path = '/home/hhy/simulation_data3.0/test1/graspit_data/'
    sum = 0
    for index in range(65):
        grasp_path = data_path + str(index) + '/'
        grasp_files = os.listdir(grasp_path)
        grasp_files.sort()
    # grasp_files = sorted(grasp_files, key=lambda x: os.path.getmtime(os.path.join(grasp_path, x)))  # 按文件时间进行排序
        files_num = len(grasp_files)

        for i in range(files_num):
            grasp_file = grasp_path + grasp_files[i]
            print(grasp_file)
            f = open(grasp_file, 'r')
            grasps = pickle.load(f)
            sum += len(grasps)
            print(len(grasps))
            f.close()
            if sum < g_index:
                continue
            else:
                sum -= len(grasps)
                print(grasps[g_index-sum-1].pose)
                print(grasps[g_index-sum-1].dofs)
                f = open('/home/hhy/simulation_data3.0/test1/grasps_pose.txt', 'r')
                poses = pickle.load(f)
                g = open('/home/hhy/simulation_data3.0/test1/grasps_dofs.txt', 'r')
                dofs = pickle.load(g)

                print(len(poses),len(dofs))
                print(poses[g_index-1],dofs[g_index-1])
                f.close()
                g.close()
                exit()

def get_patches():
    '''
    已知65个物体的depth，sdf文件，poses，对每个pose生成patches
    '''
    DATA_PATH = '/home/hhy/simulation_data3.0/good_graspit_data/'
    patch_size = [128, 64]

    for index in range(63,64):
        pose_file = DATA_PATH + 'poses/' + str(index) + '.txt'
        dofs_file = DATA_PATH + 'dofs/' + str(index) + '.txt'
        f = open(pose_file, 'r')
        poses = pickle.load(f)
        f.close()
        f = open(dofs_file, 'r')
        dofs = pickle.load(f)
        f.close()
        print len(poses),len(dofs) #查看pose和dof数量是否相同

        depth_path = '/home/hhy/simulation_data3.0/new_depthes/' + str(index) + '.jpg'
        sdf_path = '/home/hhy/simulation_data3.0/gazebo_data/sdf_file/o' + str(index) + '.sdf'
        if index < 5:
            wTo = np.array([[0, 0, -1, 0],
                        [-1, 0, 0, 0],
                        [0, 1, 0, 0],
                        [0, 0, 0, 1]])  # 由于0到4模型是自己画的,所以他们的物体坐标系和gazebo中的世界坐标系是重合的
        else:
            wTo = get_wTo(sdf_path)
       # print wTo
        for j in range(len(poses)):
            oTp = get_pose(poses[j])
            center, angle = pose2patch(oTp,wTo)
            print center,angle
            img = get_patch(depth_path,angle,center,patch_size)
            save_path = '/home/hhy/simulation_data3.0/good_graspit_data/patches/' +str(index) +'/' +str(j) + '.jpg'
            img.save(save_path)

def getPatches(patch_size,pose_file,index,depth_path,save_path,sdf_path='/home/hhy/simulation_data3.0/gazebo_data/sdf_file/o'):
    '''
    这个是为了数据集编写的,如果是测试用途,记得修改index<的条件,由于测试集都是自己生成的,所以不需要get_wTo(sdf_path)
    :param patch_size:
    :param pose_file:
    :param index:
    :param depth_path:
    :param save_path:
    :param sdf_path:
    :return:
    '''
    f = open(pose_file, 'r')
    poses = pickle.load(f)
    f.close()

    patch_size = patch_size
    depth_path = depth_path + str(index) + '.jpg'
    sdf_path = sdf_path + str(index) + '.sdf'
    if index < 5:
        wTo = np.array([[0, 0, -1, 0],
                        [-1, 0, 0, 0],
                        [0, 1, 0, 0],
                        [0, 0, 0, 1]])  # 由于0到4模型是自己画的,所以他们的物体坐标系和gazebo中的世界坐标系是重合的
    else:
        wTo = get_wTo(sdf_path)
    for i,pose in enumerate(poses):
        pose = get_pose(pose)
        center, angle = pose2patch(pose, wTo)
        img = get_patch(depth_path, angle, center, patch_size)
        dir_path = save_path + str(index) + '/'
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)
        path = dir_path + str(i) + '.jpg'
        img.save(path)

def getZerosPatches():
    '''
    65是背景，在背景depth图上获得pose对应patch
    '''
    patch_size = [200, 200]
    pose_file = '/home/hhy/simulation_data3.0/good_graspit_data/modify_grasps/poses/65.txt'
    f = open(pose_file, 'r')
    poses = pickle.load(f)
    f.close()

    for index, j in enumerate(poses):
        depth_path = '/home/hhy/simulation_data3.0/good_graspit_data/train_dataset2.0/depth/65.jpg'
        sdf_path = '/home/hhy/simulation_data3.0/test1/gazebo_data/sdf_file/o' + str(index) + '.sdf'
        if index < 5:
            wTo = np.array([[0, 0, -1, 0],
                        [-1, 0, 0, 0],
                        [0, 1, 0, 0],
                        [0, 0, 0, 1]])  # 由于0到4模型是自己画的,所以他们的物体坐标系和gazebo中的世界坐标系是重合的
        else:
            wTo = get_wTo(sdf_path)

        pose = get_pose(j)
        center, angle = pose2patch(pose, wTo)
        img = get_patch(depth_path, angle, center, patch_size)
        path = '/home/hhy/simulation_data3.0/good_graspit_data/train_dataset2.0/depth_patches/65/' + str(index)+'.jpg'
        img.save(path)

def test(num):
    #只对某个物体
    patch_size = [128, 64]
    pose_path = '/home/hhy/simulation_data3.0/good_graspit_data/poses/'+num+'.txt'
    depth_path='/home/hhy/simulation_data3.0/new_depthes/'
    sdf_path='/home/hhy/simulation_data3.0/gazebo_data/sdf_file/o'
    save_path='/home/hhy/simulation_data3.0/good_graspit_data/patches/'
    getPatches(patch_size,pose_path,int(num),depth_path,save_path,sdf_path)

if __name__ == '__main__':
    if len(sys.argv) > 1:
        num = sys.argv[1]
        test(num)
    else:
        get_patches()
    # save_poseAnddofs()
    # test(28)
    exit()
#!/usr/bin/env python
# coding:utf-8
import rospy
import pickle
import sys
import numpy as np
from geometry_msgs.msg import Pose
from graspit_commander import GraspitCommander
import os
from graspit_interface.msg import (
    Body,
    Energy,
    GraspableBody,
    Grasp,
    Planner,
    Robot,
    SearchContact,
    SearchSpace,
    SimAnnParams,
    PlanGraspsAction,
    PlanGraspsGoal
)
import json
#from move2contact import move2contact
from get_patches import add_TH3
from auto_generate_grasps import  writeFile,writeModelfile,compute_object_error

def generate_dofs(num):
    '''dof from 16 to 17'''
    DATA_PATH = '/home/hhy/simulation_data5.0/'
    noTH3dofs_path = DATA_PATH + 'final_postures/' + num +'.txt'
    dofs_path =  DATA_PATH + 'grasps/test_poses/' + num +'.txt'
    if not os.path.exists(DATA_PATH + 'grasps/test_poses/'):
        os.mkdir(DATA_PATH + 'grasps/test_poses/')
    add_TH3(noTH3dofs_path,dofs_path)


def contrast_test():
    '''
    在GRTASPIT中对比训练集优化前后的手势
    '''
    rospy.init_node('random_palm_position')
    num = sys.argv[1]

    DATA_PATH = '/home/hhy/simulation_data3.0/good_graspit_data/'
   # DATA_PATH = '/home/hhy/simulation_data3.0/bad_graspit_data/'
    noTH3dofs_path = DATA_PATH + 'final_postures/' + num +'.txt'
    final_dofs_path =  DATA_PATH + 'test_dofs/' + num +'.txt'
    init_dofs_path = DATA_PATH + 'dofs/' + num +'.txt'
    poses_path = DATA_PATH + 'poses/' + num +'.txt'
    if not os.path.exists(DATA_PATH + 'test_dofs/'):
        os.mkdir(DATA_PATH + 'test_dofs/')
    add_TH3(noTH3dofs_path,final_dofs_path)

    f = open(poses_path,'r')
    poses = pickle.load(f)
    f.close()
    f = open(init_dofs_path,'r')
    init_dofs = pickle.load(f)
    f.close()
    f = open(final_dofs_path,'r')
    final_dofs = pickle.load(f)
    f.close()
    f = open(DATA_PATH + 'test_quality/'+num +'.txt', 'rb')
    quality = json.load(f)
    print len(final_dofs),len(poses),len(quality)

    writeModelfile(num)
    world_file = 'compare_shadow'
    graspit_udf = GraspitCommander()
    
    #bad_index_path = DATA_PATH+'good_quality/bad_index/' + str(num) +'.txt'
    #f = open(bad_index_path,'r')
    #bad_index = json.load(fp=f)
    #f.close()
    #j = 0
    #for j,i in enumerate(bad_index): #只测试失败抓取示例
    for i,pose in enumerate(poses):
        print "i=",i
        j = i
        while 1 :
            print 'observe init please input a; after input b;next pose input c'
            temp = raw_input()
            if temp =='a' :    
                writeFile(poses[i],init_dofs[i],world_file)
            if temp =='b' :
                writeFile(poses[i],final_dofs[j],world_file) #j指代失败的顺序
            if temp == 'c':
                break
            graspit_udf.clearWorld()
            graspit_udf.loadWorld(world_file)
            graspit_udf.approachToContact()
            graspit_udf.autoGrasp()
            result = graspit_udf.computeQuality()
            if result!=0:
                print 'graspit epsilon quality: ',result.epsilon/0.12
            else:
                print 'Invalid robot pose specified'    
        print 'quality:',quality[j]
        
        print 'input s to stop'
        if raw_input == 's':
                break

if __name__ == '__main__':
	contrast_test()
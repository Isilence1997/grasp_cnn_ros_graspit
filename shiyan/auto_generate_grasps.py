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
from get_patches import (grasp2pose,grasp2dof,delete_TH3,add_TH3,getPatches)
from get_pose import get_pose,get_wTo,pose2patch
def write_file(grasp, file_name):
#改变world中的shadow位姿（pose+dof)
    dof_values = grasp.dofs
    dof_values = ' '.join([str(i) for i in dof_values ])
    position = grasp.pose.position
    p_x = position.x*1000.0
    p_y = position.y*1000.0
    p_z = position.z*1000.0
    
    orientation = grasp.pose.orientation
    o_x = orientation.x
    o_y = orientation.y
    o_z = orientation.z
    o_w = orientation.w
    file_name = '/home/hhy/graspit/worlds/' + file_name + '.xml'
    f = open(file_name,'w')
    world_file = '<?xml version="1.0" ?>\n'
    world_file += '<world>\n'
    world_file +='	<graspableBody>\n'
    world_file +='		<filename>models/objects/sim_model/model.xml</filename>\n'
    world_file +='		<transform>\n'
    world_file +='			<fullTransform>(+1 +0 +0 +0)[+0 +0 +0]</fullTransform>\n'
    world_file +='		</transform>\n'
    world_file +='	</graspableBody>\n'
    world_file +='	<robot>\n'
    world_file +='		<filename>models/robots/ShadowHandLast/shadowhandnew.xml</filename>\n'
    world_file +='		<dofValues>'
    world_file += dof_values+'</dofValues>\n'
    world_file +='		<transform>\n'
    world_file +='			<fullTransform>'
    world_file +='(' + str(o_w) +' '+ str(o_x)+ ' '  + str(o_y)+' ' + str(o_z)+ ')'
    world_file +='['+ str(p_x) +' '+ str(p_y) +' '+ str(p_z) + ']</fullTransform>\n'
    world_file +='		</transform>\n'
    world_file +='	</robot>\n'
    world_file +='</world>\n'
    
    f.write(world_file)
    f.close()

def writeFile(pose, dofs, file_name):
    #改变world中的shadow位姿（pose+dof)
    dof_values = dofs
    dof_values = ' '.join([str(i) for i in dof_values ])
    position = pose.position
    p_x = position.x*1000.0
    p_y = position.y*1000.0
    p_z = (position.z)*1000.0 
    
    orientation = pose.orientation
    o_x = orientation.x
    o_y = orientation.y
    o_z = orientation.z
    o_w = orientation.w
    file_name = '/home/hhy/graspit/worlds/' + file_name + '.xml'
    f = open(file_name,'w')
    world_file = '<?xml version="1.0" ?>\n'
    world_file += '<world>\n'
    world_file +='	<graspableBody>\n'
    world_file +='		<filename>models/objects/sim_model/model.xml</filename>\n'
    world_file +='		<transform>\n'
    world_file +='			<fullTransform>(+1 +0 +0 +0)[+0 +0 +0]</fullTransform>\n'
    world_file +='		</transform>\n'
    world_file +='	</graspableBody>\n'
    world_file +='	<robot>\n'
    world_file +='		<filename>models/robots/ShadowHandLast/shadowhandnew.xml</filename>\n'
    world_file +='		<dofValues>'
    world_file += dof_values+'</dofValues>\n'
    world_file +='		<transform>\n'
    world_file +='			<fullTransform>'
    world_file +='(' + str(o_w) +' '+ str(o_x)+ ' '  + str(o_y)+' ' + str(o_z)+ ')'
    world_file +='['+ str(p_x) +' '+ str(p_y) +' '+ str(p_z) + ']</fullTransform>\n'
    world_file +='		</transform>\n'
    world_file +='	</robot>\n'
    world_file +='</world>\n'
    
    f.write(world_file)
    f.close()

def getHandPose(palmpose):
    '''
    输入自定义的掌心相对物体坐标系的坐标
    返回灵巧手坐标系相对于物体坐标系的位置handpose和旋转矩阵handrotm
    '''
    wTp = np.array([[-1, 0, 0, palmpose[0]],
                    [0, -1, 0, palmpose[1]],
                    [0, 0, 1, palmpose[2]],
                    [0, 0, 0, 1]])   #手掌初始位姿
    pTh = np.array([[1, 0, 0, -0.068],
                    [0, 1, 0, 0.020],
                    [0, 0, 1, -0.012],
                    [0, 0, 0, 1]]) #灵巧手坐标系原点相对自定义手掌中心的坐标
    wTh = np.dot(wTp, pTh)
    handpose = [wTh[0][3],wTh[1][3],wTh[2][3]]
    handrotm = [wTh[0][0:3],wTh[1][0:3],wTh[2][0:3]]
    return handpose, handrotm 


def randomPalmPosition(graspit, palm_pose_center):
    '''
    change the position of the palm randomly
    hand_pose 是灵巧手在graspIT中的坐标系,palm_pose是自定义的坐标系,它们都相对于世界坐标系
    '''
    palm_pose_center = palm_pose_center  #人为设定的最优点
    palm_pose_x = np.random.normal(palm_pose_center[0],0.01,10)[0] #正态分布
    palm_pose_y = np.random.normal(palm_pose_center[1],0.01,10)[0]
    palm_pose = [palm_pose_x, palm_pose_y, palm_pose_center[2]]   #手掌初始位置
    print 'palm_pose:', palm_pose
    hand_pose_init, handrotm = getHandPose(palm_pose)
    print 'handrotm:', handrotm  #grapit中手坐标系关于世界坐标系的旋转矩阵
    hand_pose = Pose()
    #in graspit ,the unit is m
    hand_pose.position.x = hand_pose_init[0]
    hand_pose.position.y = hand_pose_init[1]
    hand_pose.position.z = hand_pose_init[2]
    hand_pose.orientation.w = 0
    hand_pose.orientation.x = 0
    hand_pose.orientation.y = 0
    hand_pose.orientation.z = 1
    rospy.sleep(1)
    graspit.setRobotPose(hand_pose)

def writeModelfile(model_index): #修改object model中的物体模型
    modelfile_path = '/home/hhy/graspit/models/objects/sim_model/model.xml'
    model_index = str(model_index)
    f = open(modelfile_path,'w')    
    content ='<?xml version="1.0" ?>\n'
    content+='<root>\n'
    content+='	<material>plastic</material>\n'  
    content+='	<geometryFile type="Inventor">'+model_index+'.stl</geometryFile>\n'
    content+='</root>'	
    f.write(content)
    f.close()

def write_modelfile(model_path,model_index):#修改model_path中的物体模型
    f = open(model_path,'w')    
    content ='<?xml version="1.0" ?>\n'
    content+='<root>\n'
    content+='	<material>plastic</material>\n'  
    content+='	<geometryFile type="Inventor">'+str(model_index)+'.stl</geometryFile>\n'
    content+='</root>'	
    f.write(content)
    f.close()

def generateGrasps(model_index,palm_pose_center): 
    '''
    configure EigenGrasp Planner, 
    start to search grasps and save the bad results
    palm_pose_center为掌心位置
    '''

    graspit_udf = GraspitCommander()
    graspit_udf.clearWorld()
    world_file = 'compare_shadow'
    graspit_udf.loadWorld(world_file)
    palm_pose_center = palm_pose_center  #人为设定的最优点  
    good_grasps = []
    bad_grasps = []  
    good_quality=[] 
    bad_quality=[]     
    
    for times in range(10):
        randomPalmPosition(graspit_udf,palm_pose_center)
        grasps = graspit_udf.planGrasps(search_space=SearchSpace(SearchSpace.SPACE_APPROACH), max_steps=70000)
            
            #select bad grasps
        g = grasps.grasps
        length = len(g)
        print 'length(g):',length
        for i in range(0, length):
            if g[i].epsilon_quality > 0.0:
                good_grasps.append(g[i])
                good_quality.append(g[i].epsilon_quality)
            else:
                bad_grasps.append(g[i])
                bad_quality.append(g[i].epsilon_quality)
        print 'len_goodgrasps:',len(good_grasps) 
        print 'len_badgrasps:',len(bad_grasps) 
    good_quality=np.array(good_quality)
    bad_quality=np.array(bad_quality)
    print 'good_quality:',good_quality
    #从后面几个开始,刚开始就应该自动化的
    model_index = str(model_index)
    #file_path = '/home/hhy/simulation_data3.0/graspit_data/'+model_index +'.txt'
    
    EXP_BAD_PATH='/home/hhy/simulation_data3.0/bad_graspit_data/'
    EXP_GOOD_PATH='/home/hhy/simulation_data3.0/good_graspit_data/'
    file_good_path = EXP_GOOD_PATH+'grasps/' + model_index +'.txt'
    file_bad_path = EXP_BAD_PATH+'grasps/' + model_index +'.txt'
    
    if not os.path.exists(EXP_GOOD_PATH):
        os.mkdir(EXP_GOOD_PATH)
    if not os.path.exists(EXP_BAD_PATH):
        os.mkdir(EXP_BAD_PATH)   

    f = open(file_good_path, 'w')
    pickle.dump(good_grasps, f, 0)  #写入成功抓取
    f.close()   
    f = open(EXP_GOOD_PATH+'good_quality/'+ model_index +'_quilty.txt', 'wb')
    pickle.dump(good_quality, f, 0)

    f = open(file_bad_path, 'w')
    pickle.dump(bad_grasps, f, 0)  #写入成功抓取
    f.close()   
    f = open(EXP_BAD_PATH+'bad_quality/'+ model_index +'_quilty.txt', 'wb')
    pickle.dump(bad_quality, f, 0)

    graspit_udf.clearWorld()
        
def GenerateData(num):
    '''
    从num代表的物体开始抓取，直到65,对每个物体随机生成good和bad抓取
    '''
    rospy.init_node('random_palm_position')
   # num = int(sys.argv[1])
    #index = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,50,51,54,55,56,57,60,62]
    palm_pose_centers = [[0.06,0.04,0.0],[60.0/1000,45.0/1000, -20.0/1000],[70.0/1000,40.0/1000, -0.0/1000], [40.0/1000,100.0/1000, -0.0/1000], [60.0/1000,70.0/1000, -0.0/1000],[0.0,0,-0.04],[40.0 / 1000, 30.0 / 1000, -40.0 / 1000], [30.0/1000,30.0/1000, -40.0/1000], [30.0/1000,30.0/1000, -40.0/1000], [30.0/1000,00.0/1000, -60.0/1000],[20.0 / 1000, 30.0 / 1000, -50.0 / 1000],[0.01,0,-0.05],[30.0/1000,30.0/1000, -50.0/1000], [5.0/1000,30.0/1000, -50.0/1000], [0,0,-0.04],[25.0/1000,30.0/1000, -50.0/1000],[0,0,-0.04],[0,0,-0.08],[0,0,-0.03], [25.0/1000,30.0/1000, -55.0/1000] ,[0,-0.02,-0.03],[35.0 / 1000, 30.0 / 1000, -40.0 / 1000],[0,0,-0.09], [35.0/1000,30.0/1000, -40.0/1000], [35.0/1000,30.0/1000, -40.0/1000],[-0.01,0.02,-0.04], [35.0/1000,30.0/1000, -40.0/1000],[0,0.05,-0.08],
                         [35.0 / 1000, 0.0 / 1000, -50.0 / 1000],[0,0,-0.025], [0,0.025,-0.05],[0,0,-0.09],[35.0/1000,0.0/1000, -80.0/1000], [35.0/1000,20.0/1000, -50.0/1000], [25.0/1000,20.0/1000, -30.0/1000],
                         [35.0 / 1000, 00.0 / 1000, -60.0 / 1000],[15.0/1000,00.0/1000, -40.0/1000],[35.0/1000,20.0/1000, -50.0/1000],[35.0/1000,20.0/1000, -50.0/1000],[35.0/1000,0.0/1000, -70.0/1000],
                         [50.0 / 1000, 50.0 / 1000, -70.0 / 1000],[15.0/1000,50.0/1000, -45.0/1000],[0,0,-0.06],[0,-0.01,-0.05],
                         [0.02, 0.035, -0.06],[0.02, 0.03, -0.04], [0.03, 0.02, -0.04], [0.03, 0.04, -0.04], [0.03, 0.008, -0.04], [0.03, 0.008, -0.04], [0.01, 0.04, -0.04], [0.028, 0.04, -0.04], [0.01, 0.070, -0.04], [0.025, 0.02, -0.065], [0.025, 0.0, -0.055], [0.025, 0.0, -0.055], [0.025, 0.0, -0.038], [0.025, 0.0, -0.08], [0.025, 0.03, -0.05], [0.025, 0.03, -0.05], [0.025, 0.045, -0.05], [0.025, 0.025, -0.05], [0.025, 0.085, -0.05], [0.005, 0.025, -0.05], [0.025, 0.01, -0.04]]
    #44~64
    # palm_pose_centers = [[0.02, 0.035, -0.04],[0.02, 0.03, -0.04], [0.03, 0.02, -0.04], [0.03, 0.04, -0.04], [0.03, 0.008, -0.04], [0.03, 0.008, -0.04], [0.028, 0.04, -0.04], [0.028, 0.04, -0.04], [0.028, 0.070, -0.04], [0.025, 0.02, -0.055], [0.025, 0.0, -0.055], [0.025, 0.0, -0.055], [0.025, 0.0, -0.038], [0.025, 0.0, -0.07], [0.025, 0.03, -0.05], [0.025, 0.03, -0.05], [0.025, 0.045, -0.05], [0.025, 0.025, -0.05], [0.025, 0.045, -0.05], [0.025, 0.025, -0.05], [0.025, 0.01, -0.04]]
    length = len(palm_pose_centers)
    print 'input s to start:'
    if raw_input() == 's':
        pass
    #else:
     #   exit()
    #从num代表的物体开始抓取，直到65
    for i,j in enumerate(palm_pose_centers):
        #if i < num:
        #    continue
        model_index = i
        print i,j
        writeModelfile(model_index)
        generateGrasps(model_index,j)

DATA_PATH = '/home/hhy/simulation_data3.0/bad_graspit_data/'

def save_dofsAndposes(num):
    poses_path = DATA_PATH + 'poses/' + num +'.txt'
    dofs_path = DATA_PATH + 'dofs/' + num +'.txt'
    grasp_path = DATA_PATH + 'grasps/' + num +'.txt'
    grasp2pose(grasp_path,poses_path)
    grasp2dof(grasp_path,dofs_path)

def select_grasps(num):
    '''
    生成pose和dofs文件，查看main生成的抓取,把不合理的抓取删掉
    ''' 
    #rospy.init_node('random_palm_position')
 #   num = sys.argv[1]
    
    poses_path = DATA_PATH + 'poses/' + num +'.txt'
    dofs_path = DATA_PATH + 'dofs/' + num +'.txt'
    grasp_path = DATA_PATH + num +'.txt'
    if not os.path.exists(DATA_PATH + 'poses/'):
        os.mkdir(DATA_PATH + 'poses/')
    if not os.path.exists(DATA_PATH + 'dofs/'):
        os.mkdir(DATA_PATH + 'dofs/')

    grasp2pose(grasp_path,poses_path)
    grasp2dof(grasp_path,dofs_path)

    f = open(poses_path,'r')
    poses = pickle.load(f)
    f.close()
    f = open(dofs_path,'r')
    dofs = pickle.load(f)
    f.close()
    f = open(DATA_PATH+ 'bad_quality/'+ num +'_quilty.txt', 'rb')
    quality = pickle.load(f)
    print len(dofs),len(poses),len(quality)

    writeModelfile(num)
    world_file = 'compare_shadow'
    graspit_udf = GraspitCommander()
    for index,i in enumerate(poses):
        writeFile(i,dofs[index],world_file)
        graspit_udf.clearWorld()
        graspit_udf.loadWorld(world_file)
        print 'if del:input d; if do nothing: input c'
        #temp = raw_input()
        #if temp == 'c':
        #    print "i=",index
        #    print 'quality:',quality[index]
        #else:
        #    print 'quality:',quality[index]
        #    np.delete(poses,index)
        #    np.delete(quality,index)
        #    np.delete(dofs,index)
    
    f = open(poses_path, 'w')
    pickle.dump(poses, f, 0)
    f.close() 
    f = open(dofs_path, 'w')
    pickle.dump(dofs, f, 0)
    f.close()   
    f = open(DATA_PATH+ 'bad_quality/' + num +'_quilty.txt', 'wb')
    pickle.dump(quality, f, 0)
    f.close()  

def generate_noTH3dofs(num):
  #  num = sys.argv[1]
    
    dofs_path = DATA_PATH + 'dofs/' + num +'.txt'
    noTH3_path = DATA_PATH + 'noTH3dofs/'+ num +'.txt'
    if not os.path.exists(DATA_PATH + 'noTH3dofs/'):
        os.mkdir(DATA_PATH + 'noTH3dofs/')
    delete_TH3(dofs_path,noTH3_path)

def generate_dofs(num):
    '''
    将优化后的posture转换为dofs格式（17自由度）
    '''
    DATA_PATH = '/home/hhy/simulation_data5.0/'
    noTH3dofs_path = DATA_PATH + 'final_postures/' + num +'.txt'
    dofs_path =  DATA_PATH + 'grasps/test_poses/' + num +'.txt'
    if not os.path.exists(DATA_PATH + 'grasps/test_poses/'):
        os.mkdir(DATA_PATH + 'grasps/test_poses/')
    add_TH3(noTH3dofs_path,dofs_path)

def get_patch(num):
    '''
    对物体num生成patches
    '''
    patch_size = [128,64]
    num = int(num)
    DATA_PATH = '/home/hhy/simulation_data3.0/'
    pose_file = DATA_PATH + 'bad_graspit_data/poses/' + str(num) + '.txt'
    sdf_path=DATA_PATH +'gazebo_data/sdf_file/o'
    depth_path=DATA_PATH + 'new_depthes/'
    save_path=DATA_PATH + 'bad_graspit_data/patches/'
    if not os.path.exists(save_path):
        os.mkdir(save_path)
    getPatches(patch_size,pose_file,num,depth_path,save_path,sdf_path)    

def get_zxyzw(num,error):
    '''
    :param num: 选择的模型
    :return: zxyzw
    '''
  #  num = sys.argv[1]
    poses_path=DATA_PATH + 'poses/'+num+'.txt'
    zxyzws_path=DATA_PATH + '100zxyzws/'
    pose_file = open(poses_path, 'rb')
    poses = pickle.load(pose_file)
    pose_file.close()
    zxyzws = []
    for index in range(len(poses)):
        pose = get_pose(poses[index]) #hand转为palm
        zxyzw = []
        zxyzw.append(pose[2][3]*100 + error) #相对物体坐标系xoy平面的距离
        zxyzw.append(poses[index].orientation.x)
        zxyzw.append(poses[index].orientation.y)
        zxyzw.append(poses[index].orientation.z)
        zxyzw.append(poses[index].orientation.w)
        zxyzws.append(zxyzw)
    print 'length of grasp :',len(zxyzws)
    #print zxyzws
    if not os.path.exists(zxyzws_path):
        os.mkdir(zxyzws_path)
    with open(zxyzws_path+ num +'.txt','w') as f:
        json.dump(zxyzws,f)
    #以list格式写入.txt文件，读取时用json.load(fp=f)


def compute_object_error(num):
    #计算物体坐标系原点到物体右下角在xoy平面上的距离
    rospy.init_node('random_palm_position')
    
    DATA_PATH = '/home/hhy/simulation_data3.0/grasps/'
    poses_path = DATA_PATH + 'poses/' + num +'.txt'
    dofs_path = DATA_PATH + 'dofs/' + num +'.txt'
    zxyzws_path = DATA_PATH + 'zxyzws/' + num + '.txt'
    f = open(poses_path,'r')
    poses = pickle.load(f)
    f.close()
    f = open(dofs_path,'r')
    dofs = pickle.load(f)
    f.close()
    f = open(zxyzws_path,'r')
    zxyzws = pickle.load(f)
    f.close()
    #print len(dofs),len(poses),len(zxyzws)
    writeModelfile(num)
    world_file = 'compare_shadow'
    graspit_udf = GraspitCommander()
    for index,i in enumerate(poses):
        writeFile(i,dofs[index],world_file)
        graspit_udf.clearWorld()
        graspit_udf.loadWorld(world_file)
        pose = get_pose(i) 
        print "i=",index
        print "pose.z=",i.position.z*100 #hand pose
        print  '100z=',pose[2][3]*100  #palm pose
        print 'zxyzw=',zxyzws[index] #well的结果
        print 'error=',zxyzws[index][0]/10-pose[2][3]*100
        print 'input c to next,input f to finish'
        #temp = raw_input()
        #if temp =='c' :
        #    pass
        #if temp == 'f' :
       #     return zxyzws[index][0]/10-pose[2][3]*100
    return zxyzws[index][0]/10-pose[2][3]*100

if __name__ == '__main__':
    if len(sys.argv)>1:
        num = sys.argv[1]
        #GenerateData(num)
       # test_grasps()
        save_dofsAndposes(num)
        generate_noTH3dofs(num) 
        get_patch(num)
        error = compute_object_error(num)
        get_zxyzw(num,error)
        
    else:
        # GenerateData(23)
        for i in range(1):
            num = str(i)
            save_dofsAndposes(num)
            #select_grasps(num)
            generate_noTH3dofs(num)
            get_patch(num)
            error = compute_object_error(num)
            get_zxyzw(num,error)
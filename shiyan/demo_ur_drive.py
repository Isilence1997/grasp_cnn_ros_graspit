#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import sensor_msgs.msg 


ur5_pose=[]
def read_pose(data):
    global ur5_pose
    ur5_pose=[data.position.x,data.position.y,data.position.z,
              data.orientation.x,data.orientation.y,data.orientation.z,data.orientation.w]
if __name__ == '__main__':
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node('demo',anonymous=True)
    rospy.Subscriber('/ros_msg',geometry_msgs.msg.Pose,read_pose)
    rospy.sleep(1)
    robot=moveit_commander.RobotCommander()
    scene=moveit_commander.PlanningSceneInterface()
    group=moveit_commander.MoveGroupCommander('right_arm')
    group.set_pose_reference_frame('/ur5_arm_base_link')
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                               moveit_msgs.msg.DisplayTrajectory,
                                               queue_size=20)  
    #创建节点display_planned_path，发布演示轨迹，队列为20
    print '========reference frame:%s' %group.get_pose_reference_frame()
    print '========reference end:%s' %group.get_end_effector_link()
    print '========robot groups:'
    print robot.get_group_names()
    print '=======printing robot state'
    print robot.get_current_state()
    print '==============================='

    group.set_goal_joint_tolerance(0.005)
    group.set_goal_position_tolerance(0.01)
    group.set_goal_orientation_tolerance(0.05)
    group.allow_replanning(True)

    joints_names=['ur5_arm_shoulder_pan_joint','ur5_arm_shoulder_lift_joint',
                  'ur5_arm_elbow_joint','ur5_arm_wrist_1_joint',
                  'ur5_arm_wrist_2_joint','ur5_arm_wrist_3_joint']
    
    #start_states = [-1.5399773756610315, -0.6376326719867151,
    #                -2.174180332814352,-2.29676324525942, 
    #                -1.6370890776263636, -1.59]
    start_states = [-1.4891465345965784, -0.7388971487628382, 
                    -2.307086769734518, 1.4583836793899536, 
                    1.605499267578125, -1.476703945790426]

    middle_states =  [-1.4300053755389612, -1.46686298051943, 
                      -2.0111354033099573, 0.23399388790130615, 
                      1.6055352687835693, -0.022603336964742482]

    final_states =  [-1.4388073126422327, -1.6214898268329065, 
                     -1.9346373716937464, 0.05009031295776367, 
                     2.140308380126953, -0.6142719427691858]
                 
 
    
#plan0,初始状态
 #   group.set_joint_value_target(start_states)
 #   plan0=group.plan()
  #  group.execute(plan0)
    while True:
        print 'Plan0: Input s to move arm to start, m to middle, f to final, st to next'
        key_word = raw_input()
        if key_word == 's':
            group.set_joint_value_target(start_states)
            plan = group.plan()
            group.execute(plan)
        elif key_word == 'm':
            group.set_joint_value_target(middle_states)
            plan = group.plan()
            group.execute(plan)
        elif key_word == 'f':
            group.set_joint_value_target(final_states)
            plan = group.plan()
            group.execute(plan)
        elif key_word == 'st':
            break
        rospy.sleep(2)   #最好停一下,太快,会导致Goal start doesn't match current pose,给robot反应时间
 
#plan1, 中间灵巧手姿态调整
    print 'Plan1: c to continue' 
    if raw_input() == 'c':
        pass; 
    pose_target = geometry_msgs.msg.Pose()
    print 'ur5_pose',ur5_pose
    pose_target.orientation.w=ur5_pose[6]
    pose_target.orientation.x=ur5_pose[3]
    pose_target.orientation.y=ur5_pose[4]
    pose_target.orientation.z=ur5_pose[5]
    pose_target.position.x=ur5_pose[0]
    pose_target.position.y=ur5_pose[1]
    pose_target.position.z=ur5_pose[2]
    #    pose_target = [0.07,0.5 ,0.3 ,-0.07 ,-0.09 ,0.06 ,0.33]
    group.set_pose_target(pose_target)
    print 'pose_target',pose_target
    get_char = ' '
    while True:
        plan2=group.plan() 
        length = len(plan2.joint_trajectory.points)
        first_joint = plan2.joint_trajectory.points[length-1].positions[0]
        fourth_joint = plan2.joint_trajectory.points[length-1].positions[3] 
        while (first_joint > 0 or first_joint <-2.4 or fourth_joint < -4 or fourth_joint >1.4 ):
            plan2=group.plan()
            length = len(plan2.joint_trajectory.points)
            first_joint = plan2.joint_trajectory.points[length-1].positions[0]
            fourth_joint = plan2.joint_trajectory.points[length-1].positions[3]
            print first_joint,fourth_joint
            rospy.sleep(1)
        display_trajectory = moveit_msgs.msg.DisplayTrajectory()
        display_trajectory.trajectory_start = robot.get_current_state() #把机器人当前状态作为轨迹初始点
        display_trajectory.trajectory.append(plan2)
        display_trajectory_publisher.publish(display_trajectory);  #演示规划轨迹
        print 'if plan is ok:input c to execute; else: input others'
        if raw_input()== 'c':
            break #输入其他，继续规划
    group.execute(plan2) 
    rospy.sleep(1)
#plan3,抓取状态
    while True:
        print 'Input h to move arm to higher, l to lower,n to next'
        group_variable_values = group.get_current_joint_values()
        print '= = = = = = = =Joint_values:\n',group_variable_values
        key_word = raw_input()
        if key_word == 'h':
            group_variable_values[1]+=0.2;
            group_variable_values[2]+=0.2;
            group_variable_values[3]-=0.4;
  #          group_variable_values[4]-=0.2;
        elif key_word == 'l':
            group_variable_values[1]-=0.2;
            group_variable_values[2]-=0.2;
            group_variable_values[3]+=0.4;
  #          group_variable_values[4]+=0.2; 
        elif key_word == 'n':
            break;
        group.set_joint_value_target(group_variable_values)
        plan3 = group.plan()
        group.execute(plan3)
        rospy.sleep(1)

#plan4,恢复状态
    while True:
        print 'Input m to middle, s to start, st to stop'
        key_word = raw_input()
        if key_word == 's':
            group.set_joint_value_target(start_states)
            plan = group.plan()
            group.execute(plan)
        elif key_word == 'm':
            group.set_joint_value_target(middle_states)
            plan = group.plan()
            group.execute(plan)
        elif key_word == 'st':
            break
        rospy.sleep(2)   #最好停一下,太快,会导致Goal start doesn't match current pose,给robot反应时间
    moveit_commander.os._exit(0)

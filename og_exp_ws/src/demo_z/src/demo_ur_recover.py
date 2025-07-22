#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
# from std_msgs.msg import String


def main():
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node('demo',anonymous=True)
    rospy.sleep(1)
    robot = moveit_commander.RobotCommander()
    scene = moveit_commander.PlanningSceneInterface()
    group = moveit_commander.MoveGroupCommander('right_arm')
    group.set_pose_reference_frame('/ur5_arm_base_link')
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                   moveit_msgs.msg.DisplayTrajectory,
                                                   queue_size=20)
    print '========reference frame: %s' %group.get_pose_reference_frame()
    print '========reference end: %s' %group.get_end_effector_link()
    print '========robot groups:'
    print robot.get_group_names()
    print '========printing robot state'
    print robot.get_current_state()
    print '==============================='

    joints_names = ['ur5_arm_shoulder_pan_joint', 'ur5_arm_shoulder_lift_joint',
                    'ur5_arm_elbow_joint', 'ur5_arm_wrist_1_joint',
                    'ur5_arm_wrist_2_joint', 'ur5_arm_wrist_3_joint']
    
    # origin_states = [0.19952113926410675, 1.912264347076416, 
    #                 -1.6073781251907349, 0.2653571665287018, 
    #                 -0.11132800579071045, 0.08540230989456177]

    origin_states = [1.5527830123901367, -2.8607361952411097, 
                     2.5064284801483154, 1.9551929235458374, 
                     -1.5679052511798304, 0.03917231410741806]

    # ur_script_pub = rospy.Publisher('/ur5/ur_driver/URScript', String, queue_size=10)
    while True:
        print 'Input o to move arm back to origin position, s to stop'
        key_word = raw_input()
        if key_word == 'o':
            group.set_joint_value_target(origin_states)
            plan = group.plan()
            group.execute(plan)
        # elif key_word == 'ty':
        #    ur_script_pub.publish('set robotmode freedrive')
        # elif key_word == 'tn':
        #    ur_script_pub.publish('set robotmode run')
        elif key_word == 's':
            break
        rospy.sleep(2)

    moveit_commander.os._exit(0)

if __name__ == '__main__':
    main()
#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

from sr_robot_commander.sr_hand_commander import SrHandCommander


def main():
    rospy.init_node('sr_moveit_test', anonymous=True)

    hand_commander = SrHandCommander("right_hand")

    print "Robot name: ", hand_commander.get_robot_name()
    print "Group name: ", hand_commander.get_group_name()
    print "Planning frame: ", hand_commander.get_planning_frame()

    joints_position = hand_commander.get_joints_position()
    joints_velocity = hand_commander.get_joints_velocity()

    print("Hand joint positions:\n" + str(joints_position) + "\n")
    print("Hand joint velocities:\n" + str(joints_velocity) + "\n")

    current_state = hand_commander.get_current_state()
    current_state_bounded = hand_commander.get_current_state_bounded()

    print("Current state:\n" + str(current_state) + "\n")
    print("Current state bounded:\n" + str(current_state_bounded) + "\n")

    open_hand = {'rh_THJ1': 0.0, 'rh_THJ2': 0.0, 'rh_THJ4': 0.0, 'rh_THJ5': 0.0,
                 'rh_FFJ1': 0.0, 'rh_FFJ2': 0.0, 'rh_FFJ3': 0.0, 'rh_FFJ4': 0.0,
                 'rh_MFJ1': 0.0, 'rh_MFJ2': 0.0, 'rh_MFJ3': 0.0, 'rh_MFJ4': 0.0,
                 'rh_RFJ1': 0.0, 'rh_RFJ2': 0.0, 'rh_RFJ3': 0.0, 'rh_RFJ4': 0.0}

    natural_hand = {'rh_FFJ1': -0.015231161684773453, 'rh_FFJ2': 0.4707354376773168, 
                    'rh_FFJ3': -0.020599036757731948, 'rh_FFJ4': 0.03846792953124516, 
                    'rh_THJ4': 1.129553058484541, 'rh_THJ5': 0.17285609095207696, 
                    'rh_THJ1': 0.270633081305584, 'rh_THJ2': 0.7282881900694186, 
                    'rh_RFJ4': -0.030063596923893404, 'rh_RFJ1': 0.005949986086344283, 
                    'rh_RFJ2': 0.6274874215503423, 'rh_RFJ3': 0.44395101691519906, 
                    'rh_MFJ1': 0.025355373778972734, 'rh_MFJ3': 0.07746660184405069, 
                    'rh_MFJ2': 0.9605842806822085, 'rh_MFJ4': 0.02818898576846175}

    while True:
        print 'Input o to move hand to open, n to natural, s to stop'
        print 'Input ty to turn on teach mode, tn to turn off teach mode'
        key_word = raw_input()
        if key_word == 'o':
            hand_commander.move_to_joint_value_target(open_hand,
                                                      wait=True, angle_degrees=False)
        elif key_word == 'n':
            hand_commander.move_to_joint_value_target_unsafe(natural_hand, time=2.0,
                                                      wait=True, angle_degrees=False)
        elif key_word == 'ty':
            hand_commander.set_teach_mode(True)
            print 'Hand teach mode on'
        elif key_word == 'tn':
            hand_commander.set_teach_mode(False)
            print 'Hand teach mode off'
        elif key_word == 's':
            break
        rospy.sleep(2)

    # robot = moveit_commander.RobotCommander()
    # group = moveit_commander.MoveGroupCommander('right_hand')

    # display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
    #                                            moveit_msgs.msg.DisplayTrajectory,
    #                                            queue_size=20)

    # # We can get the name of the reference frame for this robot:
    # planning_frame = group.get_planning_frame()
    # print "============ Reference frame: %s" % planning_frame

    # # We can also print the name of the end-effector link for this group:
    # eef_link = group.get_end_effector_link()
    # print "============ End effector: %s" % eef_link

    # # We can get a list of all the groups in the robot:
    # group_names = robot.get_group_names()
    # print "============ Robot Groups:", robot.get_group_names()

    # # Sometimes for debugging it is useful to print the entire state of the
    # # robot:
    # print "============ Printing robot state"
    # print robot.get_current_state()
    # print ""

    # # joint_goal = group.get_current_joint_values()
    # # print joint_goal

    # joint_goal = group.get_current_joint_values()

    # group.go(joint_goal, wait=True)

    moveit_commander.os._exit(0)

if __name__ == '__main__':
    main()
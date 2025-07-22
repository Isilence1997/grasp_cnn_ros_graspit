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

    target_name = ['rh_FFJ1', 'rh_FFJ2', 
                   'rh_FFJ3', 'rh_FFJ4', 
                   'rh_MFJ1', 'rh_MFJ2', 
                   'rh_MFJ3', 'rh_MFJ4', 
                   'rh_RFJ1', 'rh_RFJ2', 
                   'rh_RFJ3', 'rh_RFJ4', 
                   'rh_THJ1', 'rh_THJ2', 
                   'rh_THJ4', 'rh_THJ5']

    # target-1
    target_value = [0.0654498469497874, 0.7501202317082012, 0.9967902367659965, 0.33107638849859733, 0.04067799252656107, 1.1442814908387824, 0.7229417749333041, 0.3978121523697447, 0.023405905531712012, 1.1789069339244171, 0.602587065436103, -0.4213355375370417, 0.7407298050190512, -0.2508338320079225, 1.1257058436901595, 0.0717891774061713]

    # target-2
    target_value = [0.06611095651493676, 1.1345879718397798, 0.18456748364472605, -0.06734754281939047, 0.03520210891721631, 1.0221084431991792, 0.5410384735090406, 0.3093032229753949, 0.029907545957187587, 1.3521803431688026, 0.3572103567519972, -0.3560388955865041, 0.13046596343766356, -0.06547746612418555, 1.0481047481140795, 0.3107433101206205]

    # target-3
    target_value = [0.07206094260128104, 1.2678351211874825, 0.21301187170345423, -0.30687863441978813, 0.04146026161361033, 1.348347153726294, 0.14223690222789606, 0.18506707449055257, 0.2061020014875754, 1.42100389356961, 0.1967996605246377, -0.4128105079953791, 0.5762538533005828, -0.10894122238193814, 0.9633493140509989, 0.13780465730525138]

    # target-4
    target_value = [0.056855422602845596, 0.722269233006164, 0.5295125329968204, 0.030746923826800353, 0.04146026161361033, 1.333088907198123, 0.4708164579834676, 0.1776709589285618, 0.020805249361521783, 1.110451094557466, 0.7990107963405997, -0.417304137411054, 0.2351193846580314, -0.05965643968497644, 0.7806533604008986, 0.08019624975666785]

    # target-5
    target_value = [0.06743317564523549, 0.738051465603985, 0.6201694938190837, 0.3359775343409579, 0.048500683397053546, 1.444715026535797, 0.35209683350845444, 0.3734329922172561, 0.033158366169925346, 1.3359865666039068, 0.5044455615298984, -0.41796717498800395, 1.0399168346546388, -0.33760198028637717, 1.0321615315217878, 0.07975552311240953]

    # target-6
    target_value = [0.06611095651493676, 1.231019582278227, 0.5608529323973697, -0.018263252878106706, 0.033637570743117795, 0.928296995904484, 0.5314571282551975, 0.38652508963310317, 0.026006561701902242, 1.1910522663480891, 0.4503805477690299, -0.42340235642985274, 0.6035115731103441, -0.24563984268358396, 1.12272087596037, 0.11749285404562512]

    # target-7
    target_value = [0.07867203825277475, 1.4266021327336462, 0.12409895727300045, -0.006865494800872185, 0.03520210891721631, 1.3081938733890013, 0.48774617596726855, 0.10394256497815281, 0.029907545957187587, 1.2963118140199121, 0.6005156037073438, -0.22810468264143663, 0.07694073695360057, -0.07987615969088603, 0.9405048476566907, 0.2048831157270728]

    target_hand = {}
    for i in range(len(target_name)):
        target_hand[target_name[i]] = target_value[i]

    to_hold = 0.1
    target_hand['rh_FFJ1'] += to_hold
    target_hand['rh_MFJ1'] += to_hold
    target_hand['rh_RFJ1'] += to_hold
    target_hand['rh_THJ1'] += to_hold

    print target_hand

    while True:
        print 'Input o to move hand to open, n to natural, t to target, s to stop'
        print 'Input ty to turn on teach mode, tn to turn off teach mode'
        key_word = raw_input()
        if key_word == 'o':
            # hand_commander.move_to_joint_value_target(open_hand,
            #                                           wait=True, angle_degrees=False)
            hand_commander.move_to_joint_value_target_unsafe(open_hand, time=2.0,
                                                      wait=True, angle_degrees=False)
        elif key_word == 'n':
            hand_commander.move_to_joint_value_target_unsafe(natural_hand, time=2.0,
                                                      wait=True, angle_degrees=False)
        elif key_word == 't':
            hand_commander.move_to_joint_value_target_unsafe(target_hand, time=2.0,
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
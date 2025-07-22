#!/usr/bin/env python
# coding:utf-8
import rospy
import copy
from moveit_msgs.srv import GetPositionIK
from moveit_msgs.msg import PositionIKRequest
from sr_robot_commander.sr_hand_commander import SrHandCommander


if __name__ == '__main__':
    rospy.init_node('right_hand_demo')
    rospy.sleep(1)
    client = rospy.ServiceProxy('compute_ik', GetPositionIK)
    rospy.wait_for_service('compute_ik')
    position = PositionIKRequest()
    position.pose_stamped.header.frame_id = 'rh_palm'

    position.group_name = 'rh_first_finger'
    position.pose_stamped.pose.position.x = 0.03191
    position.pose_stamped.pose.position.y = -0.0839
    position.pose_stamped.pose.position.z = 0.12652
    rospy.wait_for_service('compute_ik')
    solution = client(position).solution
    ff_values = solution.joint_state.position[8:12]
   
    #print solution
    print 'result1'
    print ff_values



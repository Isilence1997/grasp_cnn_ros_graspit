#!/usr/bin/env python
# coding:utf-8

import rospy
import tf2_ros
from geometry_msgs.msg import TransformStamped
from geometry_msgs.msg import PoseStamped
from moveit_msgs.srv import GetPositionIK
from moveit_msgs.msg import PositionIKRequest

from sr_robot_commander.sr_hand_commander import SrHandCommander
from sr_utilities.hand_finder import HandFinder

# Helper function to broadcast the pose as tf to visualize it
broadcaster = tf2_ros.StaticTransformBroadcaster()
def publish_tf(pose_requested):
    static_transform_stamped = TransformStamped()
    static_transform_stamped.header.stamp = rospy.Time.now()
    static_transform_stamped.header.frame_id = pose_requested.header.frame_id
    static_transform_stamped.child_frame_id = "pose_requested"

    static_transform_stamped.transform.translation.x = pose_requested.pose.position.x
    static_transform_stamped.transform.translation.y = pose_requested.pose.position.y
    static_transform_stamped.transform.translation.z = pose_requested.pose.position.z

    static_transform_stamped.transform.rotation.x = pose_requested.pose.orientation.x
    static_transform_stamped.transform.rotation.y = pose_requested.pose.orientation.y
    static_transform_stamped.transform.rotation.z = pose_requested.pose.orientation.z
    static_transform_stamped.transform.rotation.w = pose_requested.pose.orientation.w

    broadcaster.sendTransform(static_transform_stamped)

if __name__ == '__main__':
    rospy.init_node('right_hand_demo')

    # Initializing ik service
    client = rospy.ServiceProxy('compute_ik', GetPositionIK)
    rospy.wait_for_service('compute_ik')

    # Defining the pose
    pose_requested = PoseStamped()
    pose_requested.header.frame_id = 'rh_palm'
    pose_requested.pose.position.x = 0.03191
    pose_requested.pose.position.y = -0.0839
    pose_requested.pose.position.z = 0.12652
    pose_requested.pose.orientation.x = 0.0
    pose_requested.pose.orientation.y = 0.0
    pose_requested.pose.orientation.z = 0.0
    pose_requested.pose.orientation.w = 1.0

    # Publishing the pose as a tf if you want to visualize it in rviz
    publish_tf(pose_requested)

    # Filling the ik request
    service_request = PositionIKRequest()
    service_request.group_name = 'rh_first_finger'
    service_request.ik_link_name = 'rh_fftip'
    service_request.pose_stamped = pose_requested
    service_request.timeout.secs = 0.5
    service_request.avoid_collisions = True

    # Requesting the service and checking the error message
    try:
        resp = client(ik_request=service_request)

        # Check if error_code.val is SUCCESS=1
        if resp.error_code.val != 1:
            if resp.error_code.val == -10:
                rospy.logerr("Unreachable point: Start state in collision")
            elif resp.error_code.val == -12:
                rospy.logerr("Unreachable point: Goal state in collision")
            elif resp.error_code.val == -31:
                rospy.logerr("Unreachable point: No IK solution")
            else:
                rospy.logerr("Unreachable point (error: %s)" % resp.error_code)
        else:
            solution = resp.solution
            ff_values = solution.joint_state
            print "Solution found:", ff_values

    except rospy.ServiceException, e:
        rospy.logerr("Service call failed: %s" % e)


    # if you want to plan and execute to that position:

    #Initialize the hand commander using the hand finder
    hand_finder = HandFinder()
    hand_parameters = hand_finder.get_hand_parameters()
    hand_serial = hand_parameters.mapping.keys()[0]
    hand_commander = SrHandCommander(hand_parameters=hand_parameters,
                                     hand_serial=hand_serial)


    # Moving to a target determined by the values in position_values.
    hand_mapping = hand_parameters.mapping[hand_serial]
    position_1 = dict(zip(solution.joint_state.name[2:6], solution.joint_state.position[2:6]))
    print "position_1", position_1
    hand_commander.move_to_joint_value_target(position_1)


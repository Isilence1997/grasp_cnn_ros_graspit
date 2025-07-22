# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "graspit_interface: 18 messages, 29 services")

set(MSG_I_FLAGS "-Igraspit_interface:/home/hhy/graspit_ros_ws/src/graspit_interface/msg;-Igraspit_interface:/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(graspit_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg" "graspit_interface/SimAnnParams:geometry_msgs/Vector3Stamped:geometry_msgs/Pose:std_msgs/Header:graspit_interface/SearchContact:graspit_interface/Planner:graspit_interface/PlanGraspsGoal:geometry_msgs/Quaternion:graspit_interface/PlanGraspsActionFeedback:graspit_interface/Grasp:geometry_msgs/Point:geometry_msgs/Vector3:graspit_interface/PlanGraspsActionGoal:graspit_interface/PlanGraspsResult:graspit_interface/SearchSpace:graspit_interface/PlanGraspsActionResult:graspit_interface/PlanGraspsFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:graspit_interface/TactileSensorData:geometry_msgs/PoseStamped:graspit_interface/Contact:sensor_msgs/JointState"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg" "geometry_msgs/Vector3Stamped:actionlib_msgs/GoalID:std_msgs/Header:graspit_interface/PlanGraspsResult:geometry_msgs/Quaternion:graspit_interface/Grasp:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg" "graspit_interface/PlanGraspsFeedback:geometry_msgs/Vector3Stamped:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:graspit_interface/Grasp:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg" "graspit_interface/SimAnnParams:std_msgs/Header:graspit_interface/SearchContact:graspit_interface/Planner:graspit_interface/PlanGraspsGoal:graspit_interface/SearchSpace:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg" "geometry_msgs/Vector3Stamped:std_msgs/Header:geometry_msgs/Quaternion:graspit_interface/Grasp:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg" "geometry_msgs/Vector3Stamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv" "graspit_interface/Body:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:graspit_interface/GraspableBody:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv" "geometry_msgs/Pose:std_msgs/Header:graspit_interface/Contact:geometry_msgs/Quaternion:geometry_msgs/Point:graspit_interface/TactileSensorData:geometry_msgs/PoseStamped:graspit_interface/Robot:sensor_msgs/JointState"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg" "geometry_msgs/Vector3Stamped:std_msgs/Header:geometry_msgs/Quaternion:graspit_interface/Grasp:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv" ""
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg" "graspit_interface/SearchContact:graspit_interface/SimAnnParams:graspit_interface/SearchSpace:graspit_interface/Planner"
)

get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv" NAME_WE)
add_custom_target(_graspit_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graspit_interface" "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_msg_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)

### Generating Services
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)
_generate_srv_cpp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
)

### Generating Module File
_generate_module_cpp(graspit_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(graspit_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(graspit_interface_generate_messages graspit_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_cpp _graspit_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graspit_interface_gencpp)
add_dependencies(graspit_interface_gencpp graspit_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graspit_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_msg_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)

### Generating Services
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)
_generate_srv_eus(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
)

### Generating Module File
_generate_module_eus(graspit_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(graspit_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(graspit_interface_generate_messages graspit_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_eus _graspit_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graspit_interface_geneus)
add_dependencies(graspit_interface_geneus graspit_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graspit_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_msg_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)

### Generating Services
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)
_generate_srv_lisp(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
)

### Generating Module File
_generate_module_lisp(graspit_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(graspit_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(graspit_interface_generate_messages graspit_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_lisp _graspit_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graspit_interface_genlisp)
add_dependencies(graspit_interface_genlisp graspit_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graspit_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_msg_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)

### Generating Services
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)
_generate_srv_nodejs(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
)

### Generating Module File
_generate_module_nodejs(graspit_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(graspit_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(graspit_interface_generate_messages graspit_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_nodejs _graspit_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graspit_interface_gennodejs)
add_dependencies(graspit_interface_gennodejs graspit_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graspit_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg;/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_msg_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)

### Generating Services
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv"
  "${MSG_I_FLAGS}"
  "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)
_generate_srv_py(graspit_interface
  "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
)

### Generating Module File
_generate_module_py(graspit_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(graspit_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(graspit_interface_generate_messages graspit_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv" NAME_WE)
add_dependencies(graspit_interface_generate_messages_py _graspit_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graspit_interface_genpy)
add_dependencies(graspit_interface_genpy graspit_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graspit_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graspit_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(graspit_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(graspit_interface_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(graspit_interface_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(graspit_interface_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(graspit_interface_generate_messages_cpp actionlib_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graspit_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(graspit_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(graspit_interface_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(graspit_interface_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(graspit_interface_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(graspit_interface_generate_messages_eus actionlib_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graspit_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(graspit_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(graspit_interface_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(graspit_interface_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(graspit_interface_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(graspit_interface_generate_messages_lisp actionlib_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graspit_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(graspit_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(graspit_interface_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(graspit_interface_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(graspit_interface_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(graspit_interface_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graspit_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(graspit_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(graspit_interface_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(graspit_interface_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(graspit_interface_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(graspit_interface_generate_messages_py actionlib_generate_messages_py)
endif()

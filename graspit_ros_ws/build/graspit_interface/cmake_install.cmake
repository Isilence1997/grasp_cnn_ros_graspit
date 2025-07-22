# Install script for directory: /home/hhy/graspit_ros_ws/src/graspit_interface

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hhy/graspit_ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface/msg" TYPE FILE FILES
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Body.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/GraspableBody.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Robot.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/TactileSensorData.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Grasp.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Planner.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchSpace.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SearchContact.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Energy.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/Contact.msg"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/msg/SimAnnParams.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface/srv" TYPE FILE FILES
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobot.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBody.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBody.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetBodies.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetRobots.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetGraspableBodies.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetGraspableBodyPose.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotPose.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetBodyPose.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/GetDynamics.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetDynamics.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SetRobotDesiredDOF.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ForceRobotDOF.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/MoveDOFToContacts.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoGrasp.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/AutoOpen.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportRobot.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportObstacle.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ImportGraspableBody.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/LoadWorld.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveWorld.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ClearWorld.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/SaveImage.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ToggleAllCollisions.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeQuality.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ComputeEnergy.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/ApproachToContact.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/FindInitialContact.srv"
    "/home/hhy/graspit_ros_ws/src/graspit_interface/srv/DynamicAutoGraspComplete.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface/action" TYPE FILE FILES "/home/hhy/graspit_ros_ws/src/graspit_interface/action/PlanGrasps.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface/msg" TYPE FILE FILES
    "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsAction.msg"
    "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionGoal.msg"
    "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionResult.msg"
    "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsActionFeedback.msg"
    "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsGoal.msg"
    "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsResult.msg"
    "/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg/PlanGraspsFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface/cmake" TYPE FILE FILES "/home/hhy/graspit_ros_ws/build/graspit_interface/catkin_generated/installspace/graspit_interface-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hhy/graspit_ros_ws/devel/include/graspit_interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hhy/graspit_ros_ws/devel/share/roseus/ros/graspit_interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hhy/graspit_ros_ws/devel/share/common-lisp/ros/graspit_interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hhy/graspit_ros_ws/devel/share/gennodejs/ros/graspit_interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/hhy/graspit_ros_ws/devel/lib/python2.7/dist-packages/graspit_interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hhy/graspit_ros_ws/devel/lib/python2.7/dist-packages/graspit_interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hhy/graspit_ros_ws/build/graspit_interface/catkin_generated/installspace/graspit_interface.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface/cmake" TYPE FILE FILES "/home/hhy/graspit_ros_ws/build/graspit_interface/catkin_generated/installspace/graspit_interface-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface/cmake" TYPE FILE FILES
    "/home/hhy/graspit_ros_ws/build/graspit_interface/catkin_generated/installspace/graspit_interfaceConfig.cmake"
    "/home/hhy/graspit_ros_ws/build/graspit_interface/catkin_generated/installspace/graspit_interfaceConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/graspit_interface" TYPE FILE FILES "/home/hhy/graspit_ros_ws/src/graspit_interface/package.xml")
endif()


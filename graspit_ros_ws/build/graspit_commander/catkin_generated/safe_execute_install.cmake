execute_process(COMMAND "/home/hhy/graspit_ros_ws/build/graspit_commander/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/hhy/graspit_ros_ws/build/graspit_commander/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hhy/graspit_ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hhy/graspit_ros_ws/build

# Utility rule file for run_tests_openni_launch_roslaunch-check_launch.

# Include the progress variables for this target.
include openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/progress.make

openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch:
	cd /home/hhy/graspit_ros_ws/build/openni_camera/openni_launch && ../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/catkin/cmake/test/run_tests.py /home/hhy/graspit_ros_ws/build/test_results/openni_launch/roslaunch-check_launch.xml "/usr/bin/cmake -E make_directory /home/hhy/graspit_ros_ws/build/test_results/openni_launch" "/opt/ros/kinetic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/hhy/graspit_ros_ws/build/test_results/openni_launch/roslaunch-check_launch.xml' '/home/hhy/graspit_ros_ws/src/openni_camera/openni_launch/launch' "

run_tests_openni_launch_roslaunch-check_launch: openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch
run_tests_openni_launch_roslaunch-check_launch: openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/build.make

.PHONY : run_tests_openni_launch_roslaunch-check_launch

# Rule to build all files generated by this target.
openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/build: run_tests_openni_launch_roslaunch-check_launch

.PHONY : openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/build

openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/clean:
	cd /home/hhy/graspit_ros_ws/build/openni_camera/openni_launch && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/cmake_clean.cmake
.PHONY : openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/clean

openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/depend:
	cd /home/hhy/graspit_ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hhy/graspit_ros_ws/src /home/hhy/graspit_ros_ws/src/openni_camera/openni_launch /home/hhy/graspit_ros_ws/build /home/hhy/graspit_ros_ws/build/openni_camera/openni_launch /home/hhy/graspit_ros_ws/build/openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openni_camera/openni_launch/CMakeFiles/run_tests_openni_launch_roslaunch-check_launch.dir/depend


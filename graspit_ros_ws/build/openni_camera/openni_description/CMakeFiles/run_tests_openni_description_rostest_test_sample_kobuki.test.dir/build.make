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

# Utility rule file for run_tests_openni_description_rostest_test_sample_kobuki.test.

# Include the progress variables for this target.
include openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/progress.make

openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test:
	cd /home/hhy/graspit_ros_ws/build/openni_camera/openni_description && ../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/catkin/cmake/test/run_tests.py /home/hhy/graspit_ros_ws/build/test_results/openni_description/rostest-test_sample_kobuki.xml "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/hhy/graspit_ros_ws/src/openni_camera/openni_description --package=openni_description --results-filename test_sample_kobuki.xml --results-base-dir \"/home/hhy/graspit_ros_ws/build/test_results\" /home/hhy/graspit_ros_ws/src/openni_camera/openni_description/test/sample_kobuki.test "

run_tests_openni_description_rostest_test_sample_kobuki.test: openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test
run_tests_openni_description_rostest_test_sample_kobuki.test: openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/build.make

.PHONY : run_tests_openni_description_rostest_test_sample_kobuki.test

# Rule to build all files generated by this target.
openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/build: run_tests_openni_description_rostest_test_sample_kobuki.test

.PHONY : openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/build

openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/clean:
	cd /home/hhy/graspit_ros_ws/build/openni_camera/openni_description && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/cmake_clean.cmake
.PHONY : openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/clean

openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/depend:
	cd /home/hhy/graspit_ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hhy/graspit_ros_ws/src /home/hhy/graspit_ros_ws/src/openni_camera/openni_description /home/hhy/graspit_ros_ws/build /home/hhy/graspit_ros_ws/build/openni_camera/openni_description /home/hhy/graspit_ros_ws/build/openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openni_camera/openni_description/CMakeFiles/run_tests_openni_description_rostest_test_sample_kobuki.test.dir/depend


## kinect驱动安装

- 参照教程：https://github.com/OpenKinect/libfreenect2/blob/master/README.md#linux

  `cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/freenect2 -DENABLE_CXX11=ON`
  
  https://github.com/code-iai/iai_kinect2#install
  
  ```bash
  $ roslaunch kinect2_bridge kinect2_bridge.launch
  $ roslaunch kinect2_bridge kinect2_bridge.launch _fps_limit:=2
  ```
  
  ```bash
  $ rosrun kinect2_viewer kinect2_viewer kinect2 sd cloud
  ```
  
  
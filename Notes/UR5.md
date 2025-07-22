连接UR5：

```bash
$ roslaunch ur_modern_driver ur5_bringup.launch robot_ip:=192.168.1.101
```

```bash
$ roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch limit:=true
```

```bash
$ rosrun ur_modern_driver demo_ur5.py // 直接动
```

```bash
$ roslaunch ur5_moveit_config moveit_rviz.launch config:=true // 用rviz
```

---

发现这个错误：

MoveItSimpleControllerManager: Action client not connected: ur5/follow_joint_trajectory

结果改了这里就好了：

`/home/peter/Projects/bulldog_ws/src/universal_robot/ur5_moveit_config/config`

```yaml
controller_list:
  - name: ""
    action_ns: follow_joint_trajectory
    type: FollowJointTrajectory
    joints:
      - shoulder_pan_joint
      - shoulder_lift_joint
      - elbow_joint
      - wrist_1_joint
      - wrist_2_joint
      - wrist_3_joint
```

`name`那里原来是`ur5`，删掉就可以了。

---

使用Kinect拍摄图片并保存图片

```
$ roslaunch kinect2_bridge kinect2_bridge.launch fps_limit:=2
$ rosrun image_save image_save.py
```

---

标定：

> 1. If you haven't already, start the kinect2_bridge with a low number of frames per second (to make it easy on your CPU): `rosrun kinect2_bridge kinect2_bridge _fps_limit:=2`
> 2. create a directory for your calibration data files, for example: `mkdir ~/kinect_cal_data; cd ~/kinect_cal_data`
> 3. Record images for the color camera: `rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 record color`
> 4. Calibrate the intrinsics: `rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 calibrate color`
> 5. Record images for the ir camera: `rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 record ir`
> 6. Calibrate the intrinsics of the ir camera: `rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 calibrate ir`
> 7. Record images on both cameras synchronized: `rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 record sync`
> 8. Calibrate the extrinsics: `rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 calibrate sync`
> 9. Calibrate the depth measurements: `rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 calibrate depth`
> 10. Find out the serial number of your kinect2 by looking at the first lines printed out by the kinect2_bridge. The line looks like this: `device serial: 012526541941`
> 11. Create the calibration results directory in kinect2_bridge/data/$serial: `roscd kinect2_bridge/data; mkdir 012526541941`
> 12. Copy the following files from your calibration directory (~/kinect_cal_data) into the directory you just created: `calib_color.yaml calib_depth.yaml calib_ir.yaml calib_pose.yaml`
> 13. Restart the kinect2_bridge and be amazed at the better data.

注意：

- 棋盘的size和每一格的大小都要和标定板对应，不然是保存不了图片的

  ```bash
  $ rosrun kinect2_calibration kinect2_calibration chess5x7x0.03 record color -path /home/peter/Projects/og_exp_ws/data/kinect2_cal/
  ```

- 师兄之前已配准过了，我就不标定了，直接把`022485743547/`这个文件夹复制到`/home/peter/Projects/kinect2_ws/src/iai_kinect2/kinect2_bridge/data`中

- 参考链接：

  - https://blog.csdn.net/qingdu007/article/details/79204115

- 实际相机内参：

  ```
  P: [366.42291259765625, 0.0, 255.4647979736328, 0.0, 0.0, 366.42291259765625, 210.0113983154297, 0.0, 0.0, 0.0, 1.0, 0.0]
  ```

- 宋关于标定的笔记：https://note.youdao.com/ynoteshare1/index.html?id=d345a481cf1ee497c47c0550feee1836&type=notes


---

使用easy_eyehand标定，发现了几个错误：

- move_group要指定为ur5_arm

- 旧的`moveit_commonder`中没有`set_max_acceleration_scaling_factor`，链接：

  https://github.com/ros-planning/moveit/pull/451

  所以要拉源码下来：

  https://github.com/ros-planning/moveit/tree/indigo-devel

  ```bash
  $ git clone -b indigo-devel ...
  ```

- 有一个aruco的在线生成器：http://chev.me/arucogen/

  ID选择100，大小随意，但是要拿尺子量一下；

  而且要在launch文件里修改这两个地方：

  ```xml
  <arg name="marker_size" doc="Size of the ArUco marker used, in meters" default="0.15" />
  <arg name="marker_id" doc="The ID of the ArUco marker used" default="100" />
  ```

- 手眼标定的结果：

  ```
  translation: 
    x: 0.807209168641
    y: 0.711612550576
    z: 0.560239051469
  rotation: 
    x: -0.512498873817
    y: -0.523505290524
    z: 0.489992326617
    w: 0.472434794428
  ```

  ```
  translation: 
    x: 0.809523992963
    y: 0.727259942135
    z: 0.555307366595
  rotation: 
    x: -0.507482902564
    y: -0.525089165021
    z: 0.492536002831
    w: 0.47344562338
  ```

- 现在内参没问题，转到相机坐标系下是正确的，但是转到世界坐标系就有问题，感觉可能是这个链接：https://zhuanlan.zhihu.com/p/33441113中提到的问题：

  > 我们用的realsense，最后publish的时候发现相机跟点云的约定xyz轴不一样，我们把原来publish的frame改了下，在中间插了个tf解决这个问题：
  >
  > <img src="https://pic3.zhimg.com/80/v2-1e259f6a876f8ceeed82c6448bd0ae4e_hd.jpg" style="zoom:80%">

- ！！！标定成功！！！

  ```python
  p = numpy.array([[366.42291259765625, 0.0, 255.4647979736328, 0.0],
                   [0.0, 366.42291259765625, 210.0113983154297, 0.0],
                   [0.0, 0.0, 1.0, 0.0]])
  
  q = quaternion_matrix(numpy.array([-0.507482902564,
                                     -0.525089165021,
                                     0.492536002831,
                                     0.47344562338]))
  q[:3, 3] = numpy.array([[0.809523992963,
                           0.727259942135,
                           0.555307366595]])
  
  point_ca = numpy.dot(numpy.linalg.pinv(p), point)
  point_ca[3] = 1
  
  point_tf = numpy.dot(q, point_ca)
  print(point_tf)
  ```

  
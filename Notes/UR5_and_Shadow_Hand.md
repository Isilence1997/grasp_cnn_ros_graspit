## 宋的笔记

链接：

https://note.youdao.com/ynoteshare1/index.html?id=31aa88a606c14bcdd0e85d38302b5597&type=note

**UR5与ROS进行通讯**

物理连接:网线连接ur5的控制器和主机(控制器的网口有点难插,之前尝试用网口转USB口,但无法连接,所以最好直接连网口)

https://blog.csdn.net/qq_37541593/article/details/81542153

1.切换到catkin_ws的src文件夹，在roswiki上面下载universal_robot包

$ git clone https://github.com/ros-industrial/universal_robot.git

2.在github上面下载ur_modern_driver包

这个包的github地址是：https://github.com/ThomasTimm/ur_modern_driver

3.用ur_modern_driver替换掉universal_robot中的ur_driver

4.安装ros_control包

$ git clone -b kinetic  https://github.com/ros-controls/ros_control.git

5.cd到catkin_ws下面，安装所需的依赖，即执行

$ rosdep install --from-paths src --ignore-src --rosdistro kinetic

6.$ catkin_make

$ source devel/setup.bash

这里ur机械臂所需ros包都装好了

7.如果要连接机械臂实物，则需配置电脑的静态网络，以Ubuntu16.04为例。

->打开系统设置

->网络

->有线

->右下角的选项

->IPv4设置

->‘方法’选项中改为手动

->地址栏的‘增加’

->设置地址192.168.1.11（IP后面的11可以改为任意不同于ur5机械臂IP的值），子网掩码255.255.255.0，网关192.168.1.1，DNS服务器0.0.0.0(子网掩码、网关和DNS服务器设置为和机械臂的相同就行)

8.roslaunch命令运行ur5_bringup.launch 启动连接

$ roslaunch ur_modern_driver ur5_bringup.launch robot_ip:=192.168.1.10 //这里IP是机械臂设置的静态IP

9.1.运行其自带测试程序test_move.py可以移动机械臂

$ rosrun ur_modern_driver test_move.py

9.2.1.若要用Moveit在rviz中显示机械臂并且连接实体机械臂，则先运行

$ roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch

注意：这里如果想操作gazebo仿真的机械臂则先打开gazebo仿真$ roslaunch ur_gazebo ur5.launch

然后运行上面那条语句但需在后面加 sim:=true，即$ roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch sim:=true

9.2.2.上面的执行文件成功后，在打开rviz就行了,运行下面的命令，就能用moveit操作机械臂

$ roslaunch ur5_moveit_config moveit_rviz.launch config:=true

\---------------------  

作者：xx聪  

来源：CSDN  

原文：https://blog.csdn.net/qq_37541593/article/details/81542153  

版权声明：本文为博主原创文章，转载请附上博文链接！



主机与shadow hand的连接也是网线连接,晚上尝试用usb转网口,看能否连接上shadow,如果能就不用路由器了.

usb转网口的设备没有问题，之前联网测试过了。

问题:之前能够正常连接UR5，但现在无法连上，操作和上次没有什么区别。也不是无法连上，而是roslaunch住了。。。。

process[robot_state_publisher-2]: started with pid [9986]

process[ur_driver-3]: started with pid [9993]

没有什么问题,只要不报错,再重开一个终端,运行moveit的相关launch

插网线的时候，最好先插UR5等连接了，再插入shadow hand.

算了，使用路由器连接，都接在lan 口，

遇到问题：fail to load move_group/applyplanningsceneservice

这不是什么大问题,跟规划没有关系,以后规划的时候除了报错信息以外也要看看其他信息(报错前有提到手指碰撞,但不是以错误信息出现,而是警告信息,所以没注意),这次规划问题是由于shadow手指碰撞导致ur5无法规划,打开shadow手重新规划.

好,接下来写一下这次的环境问题

一开始的时候,看到shadow公司给了ur和shadow的联合安装包,修改相关文件但是并没有成功.

接下来,又自己定义ur和shadow的moveit_config,并修改其中的相关文件(config中添加controllers.yaml,以及launch中的controll_manager文件是空的,参看其他项目填写;其他的就是注意各文件的引用路径是否正确),不过这样也还是报错,以后有空看看shadow的包,最好还是用官方的.

**最后,实在不行了,只能修改bulldog的urdf文件,将与bulldog相关的语句注释掉,只保留ur和shadow的,用moveit_setup_assistant生成moveit_config包, 创建config:controllers.yaml;launch:moveit_execution.launch\controll_manager等文件, 参考bulldog_ur5_sr_moveit_config包修改, 修改urdf中的name以及上述提及的文件.**

最后：`roslaunch sr_edc_launch sr_edc_true.launch`

`roslaunch ur_sr_moveit_config moveit_execution.launch robot_ip:=192.168.1.101`

启动机器人,进行规划.

launch的时候会报上述提到的move_group/applyplanningsceneservice相关错误(可以去move_group.launch文件中注释掉),但没事,还是可以规划的,注意shadow不要碰撞,否则无法规划.

这次时间紧,没有很完善地解决问题,之后有空要看一下shadow公司提供的包,看能不能使用.

如果出现连接问题，注意检查网线是否松掉了，尤其是ur5



**硬件连接:**

ur\shadow\pc的网线都连接到路由器的lan口,按照前面ur的网络设置pc中的网络,

ur的ip如果改变,记得将moveit_execution.launch中的robot_ip也进行相应的修改

shadow不需要

## 我的笔记

- Shadow Hand的箱子密码：326

- 测试UR5可以使用`rosrun ur_modern_driver demo_ur5.py	`

- 如果Shadow Hand的手指向后弯曲，超出了掌背平面，需要断电后对其进行纠正。

- 实验结束后将UR5关闭，同时将Shadow手的电源和网线断开。

---

简单地打开和闭合多指手可以使用：

```bash
$ roslaunch sr_ethercat_hand_config sr_rhand.launch
```

---

> Specify a target joint configuration for the group.
>         - if the type of arg1 is one of the following: dict, list, JointState message, then no other arguments should be provided.
>         The dict should specify pairs of joint variable names and their target values, the list should specify all the variable values
>         for the group. The JointState message specifies the positions of some single-dof joints. 
>         - if the type of arg1 is string, then arg2 is expected to be defined and be either a real value or a list of real values. This is
>         interpreted as setting a particular joint to a particular value.
>         - if the type of arg1 is Pose or PoseStamped, both arg2 and arg3 could be defined. If arg2 or arg3 are defined, their types must
>         be either string or bool. The string type argument is interpreted as the end-effector the pose is specified for (default is to use
>         the default end-effector), and the bool is used to decide whether the pose specified is approximate (default is false). This situation
>         allows setting the joint target of the group by calling IK. This does not send a pose to the planner and the planner will do no IK.
>         Instead, one IK solution will be computed first, and that will be sent to the planner. 
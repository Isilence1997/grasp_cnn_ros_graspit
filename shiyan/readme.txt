real_predict.py:实际实验的网络预测结果。
sim_predict.py:仿真实验的网络预测结果。
demo_new_cnn_grasp.py:使用real_predict.py生成的抓取手势操作shadow hand进行抓取。
demo_ur5.py：UR5的规划程序，根据topic中发布的shadow hand的位姿，使UR5到达指定位姿。
ros_matlab_multi_finger:喻群超师兄的抓取框检测网络，用于生成抓取框，以及发布灵巧手的位姿信息。
result_play.m 显示框在图中的位置并保存.
get_patch.m 获取整体和局部深度图.
well_cal.m 发布ur5位姿,生成相对物体的位姿zxyzw.txt.

get_patch.py ：输入深度图，角度，中心点位置，大小，返回patch;main函数生成overall
get_patches.py :已有graspit_data,对其进行处理，包括grasp2pose，grasp2dof,save_poseAnddofs,getZerosPatches(),delete_TH3，getPatches(patch_size,pose_file,index,depth_path,save_path):指定patch大小,物体和手pose，保存patch到save_path
get_testdata.py:get_testdata()返回zxyzw并保存patch
get_pose.py:pose2patch()有问题，相机外参和内参不正确（wTcsim）
grasp_test.py: 
     compute_object_error():计算物体坐标系原点到物体右下角在xoy平面上的距离
     contrast_test():在graspit中对比优化前后的手势
仿真实验流程：
	打开graspit：roslaunch graspit_interface graspit_interface.launch
	auto_generate_grasps:指定物体num，运行main()获得graspit_data和quality,运行test_grasps()获得dof和pose，删除不合适抓取，运行generate_noTH3dofs()生成noTH3dofs.运行get_patch()获得不同pose对应的patch，运行contrast_test在graspit中显示优化前后的手势。
	sim_predict.py:优化posture，并保存优化前后抓取质量，用python3运行
	grasp_test.py：将优化前后的结果在geaspit中显示出来
	打开gazebo,导入相机：roslaunch image_collect kinect_camera.launch
	rosrun image_collect auto_collect_data.py 1: load物体模型1，保存rgb和depth图像
运行顺序：
连接kinect:roslaunch kinect2_bridge kinect2_bridge.launch _fps_limit:=2
           rosrun kinect2_viewer kinect2_viewer kinect2 sd cloud
保存深度和RGB图像,命名为01: rosrun image_save image_save.py 01
获取最优抓取框: cnn_init.m -> main_image_deep.m 
连接ur和Shadow:roslaunch sr_edc_launch sr_edc_true.launch
	    roslaunch ur_sr_moveit_config moveit_execution.launch robot_ip:=192.168.1.101
打开rviz:roslaunch ur5_moveit_config moveit_rviz.launch config:=true
张开手指:rosrun demo_z demo_sr_recover.py
	或python demo_new_cnn_grasp.py
保存zxyzw,patch和overall,发布pose: well_cal.m.
优化并保存posture: roscd demo_z 
		python real_predict.py 02
接受pose,ur5到达目标位姿:rosrun demo_z demo_ur_drive.py
读取posture,Shadow进行抓取: python demo_sr_drive.py





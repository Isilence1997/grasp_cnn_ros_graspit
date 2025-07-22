**Notes**：实际实验笔记
### 仿真数据采集：
- graspit：graspit包，models为物体模型，robots/shadowHandLast/shadowhanlite.xml为四指shadow模型
- graspit_ros_ws :graspit与ros接口，

### 打开graspit：
- `roslaunch graspit_interface graspit_interface.launch`
- 在gazebo中自动采集物体图片`graspit_ros_ws\src\image_collect\src\auto_collect_data.py`

### 实际实验
`og_exp_ws\src\demo_z`: UR,shado控制程序
`\demo_ur_drive.py` 控制UR执行抓取
 `\demo_sr_drive.py` 控制shadow执行抓取
`\demo_ur_recover.py` 控制UR回到初始位置
`\demo_sr_recover.py` 控制shadow张开
`og_exp_ws\src\image_save`: kinect采集彩色和深度图像

### 抓取框检测网络

`ros_matlab_multi_finger` :用于生成抓取框，以及发布灵巧手的位姿信息。
`result_play.m` 显示框在图中的位置并保存.
`get_patch.m` 获取整体和局部深度图.
 `well_cal.m` 发布ur5位姿,生成相对物体的位姿zxyzw.txt.
`get_patch.py` 输入深度图，角度，中心点位置，大小，返回patch;
main函数生成overall
`get_patches.py` :已有graspit_data,对其进行处理，包括grasp2pose，grasp2dof,save_poseAnddofs,getZerosPatches(),delete_TH3
`getPatches(patch_size,pose_file,index,depth_path,save_path)`:指定patch大小,物体和手pose，保存patch到save_path
 `get_testdata.py:get_testdata()`返回zxyzw并保存patch
`get_pose.py:pose2patch()` 有问题，相机外参和内参不正确（wTcsim）


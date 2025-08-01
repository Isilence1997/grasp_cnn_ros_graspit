**Notes**：EXP_NOTE

### SAMULATION DATA COLLECT：
- graspit：graspit包，models为物体模型，robots/shadowHandLast/shadowhanlite.xml为四指shadow模型
- graspit_ros_ws :graspit与ros接口，

#### OPEN graspit：
- RUN ```roslaunch graspit_interface graspit_interface.launch```
- in gazebocollect object pictures antomaticlly
  ```python graspit_ros_ws\src\image_collect\src\auto_collect_data.py```

### PHYSICAL EXPERIEMNT
`og_exp_ws\src\demo_z`: UR,shadow control demo   
`\demo_ur_drive.py`  control UR to excute grasp  
 `\demo_sr_drive.py` control shadow to  excute grasp  
`\demo_ur_recover.py`  control UR back to initial position  
`\demo_sr_recover.py` control shadow to  initial position  
`og_exp_ws\src\image_save`: kinect save color and depth images  

### grasp rectangle prediction CNN(matlab)

`ros_matlab_multi_finger` :used to generate grasp rectangle and publish shadow hands config info.

`result_play.m` display the rectangle in the image and save images.  

`get_patch.m` get whole depth image and depth patch.

 `well_cal.m` publish UR5 pose and generate the pose oriented to objects `zxyzw.txt`.  

`get_patch.py` input depth image, angles, center point position,size,return image patch;  

`get_patches.py` :several function to parse graspit_data, including grasp2pose，grasp2dof,save_poseAnddofs,getZerosPatches(),delete_TH3  

`getPatches(patch_size,pose_file,index,depth_path,save_path)`:given patch size, pose of object and robot，get and save patch to save_path.

`get_testdata.py:get_testdata()`: return zxyzw and save patch

  



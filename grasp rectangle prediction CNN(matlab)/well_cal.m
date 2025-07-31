%load num;

%get_patch;
%计算各个坐标系的转换关系
x1 = points_data_image(result_Frame(1),result_Frame(2),1);   %reult_frame�����ĵ�ģ�x,y,z)���?y1 = points_data_image(result_Frame(1),result_Frame(2),2);%根据点云图像确定抓取框中心点在相机坐标系�?D坐标
z1 = points_data_image(result_Frame(1),result_Frame(2),3);

z0 = points_data_image(result_Frame(1)+64,result_Frame(2),3); %object frame to camera;
angle = -1*(result_Frame(5)-pi/2);%frame angle - 90°
l=25;
x2 = points_data_image(result_Frame(1)+int32(l*cos(angle)),result_Frame(2)-int32(l*sin(angle)),1); 
y2 = points_data_image(result_Frame(1)+l*cos(angle),result_Frame(2)-l*sin(angle),2);
z2 = points_data_image(result_Frame(1)+l*cos(angle),result_Frame(2)-l*sin(angle),3);

deta_z = z2-z1;
deta_y = y2-y1;
deta_x = sqrt(deta_z^2+deta_y^2);
sin_xi = deta_z/deta_x;
cos_xi = deta_y/deta_x;
% sin_xi = 0;
% cos_xi =1;
camera2world = [-0.0681075  -0.05973206 -0.99588827  0.928  ;
                0.99767015 -0.00803347 -0.06774753   0.709  ;
                -0.00395374 -0.99818212  0.06014003  0.624  ;   
                 0.          0.          0.          1.    ];
z1_p = 0.03;   %distince between rctangle and hand=0.03
%target_word = camera2word*[x1;y1;z1;1]+[-0.154;0;0.015;0];
target_word = camera2world*[x1;y1;z1-z1_p;1]; %hand2world position
Rz = [cos(angle)       -sin(angle)      0;      
      sin(angle)       cos(angle)       0;
      0                 0           1];
Rx = [1        0        0;
      0   cos_xi  -sin_xi;
      0   sin_xi  cos_xi];
R1 = Rx*Rz;  %hand2camera rotation
R2 = [-0.0681075  -0.05973206 -0.99588827  ;
      0.99767015  -0.00803347 -0.06774753  ;
      -0.00395374 -0.99818212  0.06014003  ];%camera2world
%camera2world rotation
wTh = [R2*R1 target_word(1:3);%shadow2world(adjust hand to palm
               0 0 0 1];
wTgh = wTh*[0,  -1,   0,  0;
            0 ,  0,  -1,  0;
            1,   0,   0,  -0.03;
            0,   0,   0,  1];  %In graspit hand2world
pose_wTgh = rotm2quat(wTgh(1:3,1:3));  %[qw qx qy qz]
wRo= [0,  0,  -1;
     -1,  0,   0;
      0,  1,   0]; %object2world
oRh =(wRo)^(-1)*wTh(1:3,1:3);%hand to object;
pose_oTh=rotm2quat(oRh); %qw,qx,qy,qz
d = z0-z1-0.03;
%d = -0.0356+z1_p;
zxyzw=[d*100,pose_oTh(2),pose_oTh(3),pose_oTh(4),pose_oTh(1)];% d cm
%save('/home/peter/Desktop/shiyan/data/wTgh.mat', 'wTgh')
save('/home/peter/Desktop/shiyan/data/wTh.mat', 'wTh')
save('/home/peter/Desktop/shiyan/data/quat.mat','pose_wTgh')
save([IMG_PATH ,'/zxyzws/zxyzw_',num2str(num),'.mat'],'zxyzw');
save([IMG_PATH ,'/zxyzws/zxyzw_',num2str(num),'.txt'],'zxyzw','-ascii');
% wTh = [R2*R1 target_word(1:3)-[0.09;0.03;0.05];%修改shadow手的手掌误差，�?不是直接修改UR5的末端位置误�?
%     0 0 0 1]
%pTh = [1 0 0 0.02;
 %      0 1 0 0;
  %     0 0 1 0.12;
   %    0 0 0 1]; %自定义的手掌中心h到rh_palm的旋转矩�?h也是设定的抓取框的中�?   %相机坐标系相对于rh_palm的转换矩pTc = pTh*(wTh)^(-1)*camera2word; 
eTh=[0.7660    0    0.6428  0.21;   %hand2end_effector_link
    -0.6428    0    0.7660  0;
    0         -1    0       -0.015;
    0          0    0       1];
 wTe = wTh*(eTh)^(-1);
 
 my_orientation = rotm2quat(wTe(1:3,1:3));

 msg.Position.X = wTe(1,4);
 msg.Position.Y = wTe(2,4);
 msg.Position.Z = wTe(3,4);

 msg.Orientation.X = my_orientation(2);
 msg.Orientation.Y = my_orientation(3);
 msg.Orientation.Z = my_orientation(4);
 msg.Orientation.W = my_orientation(1);
 for i=1:100
    send(pub_msg,msg);  %msg = end effector's configuration
    pause(2);
 end;
 
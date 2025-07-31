%clear;
%clc;

%load result-122;
%img = imread('image1.png');%��ȡԭͼ��
value = size(save_Frame,1);
img1=img;
for i = 1:value
    img1= draw_frame(img1, save_Frame(i,1), save_Frame(i,2), save_Frame(i,3),save_Frame(i,4), save_Frame(i,5));
end
figure;
%imshow(img1);
img3= draw_frame(img, result_Frame(1), result_Frame(2), result_Frame(3),result_Frame(4), result_Frame(5));
figure;
%imshow(img3);
depth = imread([IMG_PATH,'/images_depth/',num2str(num),'_depth.jpg']);
img_size = size(depth);
%   temp = img(434,141);
temp = depth(420,480);
  for i = 1:img_size(1)
      if i >410
          for j = 1:img_size(2)
              depth(i,j) = temp;
          end        
      end
  end
  imshow(depth);
  imwrite(depth, [IMG_PATH ,'/new_depth/',num2str(num),'.jpg']);
depth = imread([IMG_PATH,'/images_depth/',num2str(num),'_depth.jpg']);
width = 128; height=64;
patch = Dig_deep(depth,result_Frame(1), result_Frame(2), width,height, result_Frame(5));
overall = Dig_deep(depth,result_Frame(1), result_Frame(2), width,width, result_Frame(5));
imshow(depth);

num='002';
imwrite(img1,[IMG_PATH, '/frames/',num2str(num),'.jpg']);
imwrite(img3,[IMG_PATH, '/result_frame/',num2str(num),'.jpg']);
imwrite(patch, [IMG_PATH ,'/patch/',num2str(num),'.jpg']);
imwrite(overall, [IMG_PATH ,'/overall/',num2str(num),'.jpg']);

%rosshutdown; 
%rosinit;
%pub_msg = rospublisher('/ros_msg','geometry_msgs/Pose');
%pause(2);
%msg = rosmessage(pub_msg);

% img2= draw_frame(img, result_Frame1(1), result_Frame1(2), result_Frame1(3),result_Frame1(4), result_Frame1(5));
% figure;
% imshow(img2);
% img2= draw_frame(img, result_Frame2(1), result_Frame2(2), result_Frame2(3),result_Frame2(4), result_Frame2(5));
% figure;
% imshow(img2);
% img2= draw_frame(img, result_Frame3(1), result_Frame3(2), result_Frame3(3),result_Frame3(4), result_Frame3(5));
% figure;
% imshow(img2);


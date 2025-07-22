width = 128; height=64;
%裁剪深度图，获得patch，overall;
%IMG_PATH = '/home/peter/Desktop/shiyan/data';
%num='02';
%IMG_PATH='D:/study/shiyan/data';
%depth=imread([IMG_PATH,'/images_depth/',num2str(num),'_depth.jpg']);
patch = Dig_deep(depth,result_Frame(1), result_Frame(2), width,height, result_Frame(5));
overall = Dig_deep(depth,result_Frame(1), result_Frame(2), width,width, result_Frame(5));
%imshow(patch);
imwrite(patch, [IMG_PATH ,'/patch/',num2str(num),'.jpg']);
imwrite(overall, [IMG_PATH ,'/depth/',num2str(num),'.jpg']);

img_size = size(depth);
%   temp = img(434,141);
temp = depth(434,213);
  for i = 1:img_size(1)
      if i >424
          for j = 1:img_size(2)
              depth(i,j) = temp;
          end        
      end
  end
  imshow(depth);
imwrite(depth, [IMG_PATH ,'/new_depth/',num2str(num),'.jpg']);
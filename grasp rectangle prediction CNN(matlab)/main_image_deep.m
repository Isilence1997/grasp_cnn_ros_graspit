
%points_data = Get_Deep_Img_xyz(points);  %��n*3���Ʊ�ɣ�i,j,:)
%points_data_image = Deal_points_Img(points_data); %540*960*3
%
%deepdata = Get_Deep_Img(msg_points); % �������е�zȡ����,���?i,j)
load cnn0;
load cnn1;
load cnn2;
load cnn_deep;
%load cnn_multi_finger;
num='02';
IMG_PATH='D:/study/shiyan/data';
depth = imread([IMG_PATH,'/images_depth/',num2str(num),'_depth.jpg']);
%deep_data_image = Deal_Deep_Img(deepdata);%540*960
deep_0_1 = Normalize(depth);
%点云图像到深度图像，归一�?
img=imread([IMG_PATH,'/images_rgb/',num2str(num),'_rgb.jpg']);
r_long = 32;
r_wide = 16;
save_Frame = [[],[]];
save_data = [[],[],[],[]];
result = 0;
n_1 = 1;
n_2 = 0;
 
deep_size = size(deep_0_1);
img_size = size(img);%[540,960,3]

 tic
for multiple_i =2:0.5:3.5
    multiple = multiple_i;%2,2.5,3,3.5
    img1 = change_size(img, img_size(2)/multiple, img_size(1)/multiple); %��С��ԭ����1/mutiple
    deepdata1 = change_size_deep(deep_0_1,deep_size(2)/multiple, deep_size(1)/multiple);
    img_size1 = size(img1);
    img_judge = [[],[]];
    n=12;
    img_judge_i =1;
%     for i_1 = round(360/multiple):n:(img_size1(1)-round(75/multiple)-n)
%         for i_2 = round(380/multiple):n:(img_size1(2)-round(390/multiple)-n)
    for i_1 = round(360/multiple):n:(img_size1(1)-round(140/multiple)-n)
        for i_2 = round(380/multiple):n:(img_size1(2)-round(380/multiple)-n)
%     for i_1 = round(130/multiple):n:(img_size1(1)-round(200/multiple)-n)
%         for i_2 = round(380/multiple):n:(img_size1(2)-round(380/multiple)-n)
            img_f = img1(i_1:i_1+n-1,i_2:i_2+n-1,:); %ȡ��СΪn*n��ͼ���?
            data = double(img_f)/255;
            cnn0 = cnn_feedforward(cnn0, data);
            cnn1_result = cnn0.full_layer{1}.o; 
            if cnn1_result >0.5
                img_judge(img_judge_i,:)=[i_1+2 i_2+2];%���β���ץȡ�����ĵ�
                img_judge_i = img_judge_i + 1;
                img_judge(img_judge_i,:)=[i_1+2  i_2+6];
                img_judge_i = img_judge_i + 1;
                img_judge(img_judge_i,:)=[i_1+2 i_2+10];
                img_judge_i = img_judge_i + 1;
                img_judge(img_judge_i,:)=[i_1+6 i_2+2];
                img_judge_i = img_judge_i + 1;
                 img_judge(img_judge_i,:)=[i_1+6 i_2+6];
                img_judge_i = img_judge_i + 1;
                img_judge(img_judge_i,:)=[i_1+6 i_2+10];
                img_judge_i = img_judge_i + 1;
                img_judge(img_judge_i,:)=[i_1+10 i_2+2];
                img_judge_i = img_judge_i + 1;
                 img_judge(img_judge_i,:)=[i_1+10 i_2+6];
                img_judge_i = img_judge_i + 1;
                img_judge(img_judge_i,:)=[i_1+10 i_2+10];
                img_judge_i = img_judge_i + 1;
            end
        end  
    end
    for i = 1:img_judge_i-1
            for r =pi*4/8:pi/32:pi*19/32 % r�ֱ�Ϊ4���Ƕ�
                img_f = Dig_Img (img1,img_judge(i,1), img_judge(i,2), r_long, r_wide,  r);
                if  isempty(img_f)
                    continue;
                end
                img_f = img_f/255;
                cnn1 = cnn_feedforward(cnn1, img_f);
                cnn1_result = cnn1.full_layer{1}.o; 

                deep_f = Dig_deep (deepdata1,img_judge(i,1), img_judge(i,2), r_long, r_wide,r);
                cnn_deep = cnn_feedforward_deep(cnn_deep,deep_f);
                cnn_deep_result = cnn_deep.full_layer{1}.o; 
              % cnn_deep_result = 1;
                if (cnn1_result>0.8&&cnn_deep_result>0.2)
                    save_Frame(n_1,:) = [round(img_judge(i,1)*multiple) round(img_judge(i,2)*multiple) round(r_long*multiple) round(r_wide*multiple) r cnn1_result];
                    save_data(:,:,:,n_1)  = img_f;
                    n_1 = n_1 + 1;
                end
                n_2 = n_2+1;
            end
            
    end
end
if  isempty(save_data)
    disp('NaN');
    return;
end

result1 = 0;
result2 = 0;
result3 = 0;
result_Frame1 = [0 0 0 0 0 0];
result_Frame2 = [0 0 0 0 0 0];
result_Frame3 = [0 0 0 0 0 0];
cnn2_n = size(save_data,4);%����cnn2�ĺ�ѡץȡ����

for i = 1:1:cnn2_n
    cnn2 = cnn_feedforward(cnn2, save_data(:,:,:,i));
    cnn2_result = cnn2.full_layer{2}.o;
    if result1 < cnn2_result
        if (result_Frame1(1)~=save_Frame(i,1))||(result_Frame1(2)~=save_Frame(i,2))
            result3 = result2;
            result_Frame3 = result_Frame2;
            result2 = result1;
            result_Frame2 = result_Frame1;
        end
        result1 = cnn2_result;
        result_Frame1 = save_Frame(i,:);
    elseif (result2 < cnn2_result)
        if(result_Frame1(1)~=save_Frame(i,1))||(result_Frame1(2)~=save_Frame(i,2))
            if result_Frame2(1)~=save_Frame(i,1)||(result_Frame2(2)~=save_Frame(i,2))
                result3 = result2;
                result_Frame3 = result_Frame2;
            end
            result2 = cnn2_result;
            result_Frame2 = save_Frame(i,:);
        end
    elseif (result3 < cnn2_result)
        if (result_Frame1(1)~=save_Frame(i,1))||(result_Frame1(2)~=save_Frame(i,2))
            if (result_Frame2(1)~=save_Frame(i,1))||(result_Frame2(2)~=save_Frame(i,2))
                result3 = cnn2_result;
                result_Frame3 = save_Frame(i,:);
            end
        end
    end
end
mean_coordinates=mean(save_Frame(:,1:2));
a1 = sum(abs(mean_coordinates-result_Frame1(1:2)));
a2 = sum(abs(mean_coordinates-result_Frame2(1:2)));
a3 = sum(abs(mean_coordinates-result_Frame3(1:2)));
if (a1<a2)&&(a1<a3)
    result_Frame =  result_Frame1;
elseif a2<a3
    result_Frame =  result_Frame2; 
else
    result_Frame =  result_Frame3;
end
toc;
save data_001.mat result_Frame save_Frame deep_0_1 save_data save_Frame
result_play;


%save data_005.mat msg_points points points_data_image deep_data_image deep_0_1 img save_Frame result_Frame result_Frame1 result_Frame2 result_Frame3



%sim  仿真结果

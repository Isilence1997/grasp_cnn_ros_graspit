# -*- coding: utf-8 -*-
'''
从图片中获取倾斜的区域图,先将图片反向旋转相应的角度,再截取相应的区域
'''

from PIL import Image
import math
import random

def get_patch(depth_path, num, *args):
    '''

    :param depth_path: 文件位置
    :param num: 旋转角度,大于等于0,小于90,不适用于90
    :param args: patch的中心位置,以及patch的大小
    :return: patch
    '''
    img = Image.open(depth_path)
    img_size = img.size
    radians = math.radians(num)

    # 图像旋转后patch的中心点坐标,顺时针为正,顺时针旋转
    x = int(round((args[0][0]-img_size[0]/2)*math.cos(radians)-(args[0][1]-img_size[1]/2)*math.sin(radians)+img_size[0]/2))
    y = int(round((args[0][0]-img_size[0]/2)*math.sin(radians)+(args[0][1]-img_size[1]/2)*math.cos(radians)+img_size[1]/2))
    img2 = img.rotate(-num)  #Image逆时针为正
    patch = img2.crop((x-args[1][0]/2, y-args[1][1]/2, x+args[1][0]/2, y+args[1][1]/2))
    return patch


if __name__ == '__main__':

    for i in range(65):
       
        depth_path = '/home/hhy/simulation_data3.0/new_depthes/' + str(i) + '.jpg'
        center = [300, 370]
        patch_size = [128, 128]
        angle = 0
        img = get_patch(depth_path, angle, center, patch_size)  #输入图片路径\patch的中心位置\旋转角度\patch的大小
        save_path = '/home/hhy/simulation_data3.0/overall/' + str(i) + '.jpg'
        img.save(save_path)




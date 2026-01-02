clc;clear;close all;
%以该图像为例
filename='ISIC_0017398.jpg';
img = imread(filename);
% img=img((1:1704),:,:);
imshow(img);
% 预处理,三通道分离
[R,G,B]=imsplit(img);
imshow(R);title('R通道');
imshow(G);title('G通道');
imshow(B);title('B通道');
% B=adapthisteq(B);
% imshow(B);title('直方图均衡化');
% 引导滤波保留边缘
img_denoised = imguidedfilter(B); 
imshow(img_denoised);title('引导滤波结果');
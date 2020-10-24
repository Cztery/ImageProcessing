% reading images, displaying images, waiting for key press,
% closing/destroying windows, creating windows, converting to grayscale

clear; close all; imtool close all;

image=imread("../img1.jpg");

figure(1)
himage=imshow(image);

himage1=rgb2gray(image);

figure(2)
himage=imshow(himage1);

pause()
close all
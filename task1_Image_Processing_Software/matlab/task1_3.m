%obtaining image regions of interest, accessing image prperties
clear; close all; imtool close all;

framewidth = 400;
framecolor = [20, 100, 100];

image=imread("../img1.jpg");
tmp = size(image);
fprintf("image size: %d x %d, %d channels\n", tmp);
tmp = numel(image);
fprintf("number of pixels: %d\n", tmp);
tmp = class(image);
fprintf("image data-type: %s\n", tmp);

image1 = image;
image1(1:(end/2), 1:(end/2), :) = image((end/2)+1:end,(end/2)+1:end, :);

imageTabbed = zeros(size(image)+[2*framewidth, 2*framewidth, 0], 'uint8');
for i=1:3
    imageTabbed(:,:,i)=framecolor(i);
end
imageTabbed(framewidth:end-framewidth-1,framewidth:end-framewidth-1,:) = image1(:,:,:);

subplot(1,3,1); imshow(image);
subplot(1,3,2); imshow(image1);
subplot(1,3,3); imshow(imageTabbed);

imwrite(imageTabbed, "imgout1_3.jpg")

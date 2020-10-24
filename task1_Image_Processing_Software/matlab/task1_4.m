%splitting and merging image channels, mirroring images

clear; close all; imtool close all;

image=imread("../img1.jpg");
black = zeros(size(image(:,:,1)));

imageR = cat(3, image(:,:,1), black, black);
imageG = cat(3, black, image(:,:,2), black);
imageB = cat(3, black, black, image(:,:,3));

imageGB = image;
imageGB(:,:,1) = 0;

imageMir = image(1:end, end:-1:1, :);

subplot(2,3,1), imshow(image), title('Original');
subplot(2,3,2), imshow(imageR), title('Only red');
subplot(2,3,3), imshow(imageG), title('Only green');
subplot(2,3,4), imshow(imageB), title('Only blue');
subplot(2,3,5), imshow(imageGB), title('Zeroed red');
subplot(2,3,6), imshow(imageMir), title('Mirror');


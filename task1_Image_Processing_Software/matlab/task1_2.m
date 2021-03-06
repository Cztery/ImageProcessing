% playing videos from file, saving videos, 
% accessing and modifying pixel values
clear; close all; imtool close all;

v = VideoReader("../vid1.mp4");

vout1 = VideoWriter("vidoutM1_2", 'MPEG-4');
open(vout1)

vout2 = VideoWriter("vidoutA1_2", 'Uncompressed AVI');
open(vout2)

while hasFrame(v);
    videoFrame = readFrame(v);
    pause(1/(v.FrameRate));
    %figure (1), imshow(videoFrame);
    
    grayFrame = rgb2gray(videoFrame);
    
    pixelEditedFrame = videoFrame;
    pixelEditedFrame(100, 100, 1:3) = [255, 255, 255];
    
    figure (2), imshowpair(grayFrame, pixelEditedFrame, 'montage');
    writeVideo(vout2, pixelEditedFrame);
    writeVideo(vout1, grayFrame);
end

close(vout1)
close(vout2)
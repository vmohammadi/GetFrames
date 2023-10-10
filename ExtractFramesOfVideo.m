clc
clear

%% Extract the frames of the video and write them into separate JPG images


    v2 = VideoReader('C:\Users\Desktop\NewData\Right.mp4');
for img = 1:v2.NumberOfFrames
    filename = strcat('Lframe',num2str(img),'.jpg');
    F2 = read(v2, img);
    S = (img/v2.NumberOfFrames)*100;
    fprintf('Right; extracted ims: %.1f percent \n',S) %Show the percentage
    imwrite(F2,fullfile('C:\Users\Desktop\NewData\R\Right',filename));
end


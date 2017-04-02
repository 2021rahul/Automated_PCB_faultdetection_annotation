cd('dust');
for i=1:73
    c0name = strcat(int2str(i),'_c0.bmp');
    c1name = strcat(int2str(i),'_c1.bmp');
    c0 = imread(c0name);  %read c0 image%
    c1 = imread(c1name);  %read c1 image%
    sub = abs(c1-c0); %subtract c0 and c1 images%
    gray = rgb2gray(sub); %convert into grayscale%
    bw=gray;
    bw(gray>80)=255; %thresholding the image%
    bw(gray<=80)=0;
    bw2 = bwareaopen(bw,250); %remove the smaller components connected by less than 250 pixels%
    se = strel('disk',2); %structuring element%
    bw3 = imopen(bw2,se); %open the image%
    subplot(1,3,1)
    imshow(c0)
    subplot(1,3,2)
    imshow(c1)
    subplot(1,3,3)
    imshow(bw3)
    annoname = strcat(int2str(i),'_anno.bmp');
    imwrite(bw3,annoname); %saving the image with fault area highlighted%
end
cd('..');
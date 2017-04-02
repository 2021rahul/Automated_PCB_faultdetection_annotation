cd('oxidation');
for i=1:13
    c0name = strcat(int2str(i),'_c0.bmp');
    c1name = strcat(int2str(i),'_c1.bmp');
    c0 = imread(c0name);  %read c0 image%
    c1 = imread(c1name);  %read c1 image%
    sub = abs(c1-c0); %subtract c0 and c1 images%
    gray = rgb2gray(sub); %convert into grayscale%
    b1 = gray;
    b1(gray<=10)=255; %thresholding the mage%
    b1(gray>10) = 0;
    add = c1+c0; %add c0 and c1 image%
    g = rgb2gray(add); %convert into grayscale%
    b2=g;
    b2(g<150)=0; %threshloding the image%
    b2(g>=150)=255;
    x = xor(b1,b2); %xor of the two binary images%
    x1 = bwareaopen(x,250); %remove the smaller components connected by less than 250 pixels%
    se = strel('disk',2); %structuring element%
    x2 = imopen(x1,se); %open the image%
    subplot(1,3,1)
    imshow(c0)
    subplot(1,3,2)
    imshow(c1)
    subplot(1,3,3)
    imshow(x2)
    annoname = strcat(int2str(i),'_anno.bmp');
    imwrite(x2,annoname); %saving the image with fault area highlighted%
end
cd('..');
%%This matlab script will be used for experimenting with food
%%classification functions

eggSalad = imread('images/eggSalad.jpg');

%%Resizer så pcen min ikke dør
eggSalad = imresize(eggSalad,0.5);
imshow(eggSalad);

%%Kmeans clustering with 3 clusters
[L,Centers]=imsegkmeans(eggSalad,3);
labeledSalad = labeloverlay(eggSalad,L);
imshow(labeledSalad)
%%3 clusters er ok 

%%Found:
%%https://se.mathworks.com/matlabcentral/fileexchange/8267-edge-detection-of-color-images 
%%Funker ikke noe særlig bra tror ikke vi kan bruke edge detection
imshow(edgecolor('images/eggSalad.jpg'))


function R=edgecolor(nm);
img=imread(nm);
[x y z]=size(img);
if z==1
    rslt=edge(img,'canny');
elseif z==3
    img1=rgb2ycbcr(img);
    dx1=edge(img1(:,:,1),'canny');
    dx1=(dx1*255);
    img2(:,:,1)=dx1;
    img2(:,:,2)=img1(:,:,2);
    img2(:,:,3)=img1(:,:,3);
    rslt=ycbcr2rgb(uint8(img2));
end
R=rslt;
end
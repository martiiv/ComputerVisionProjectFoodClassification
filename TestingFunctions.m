%%This matlab script will be used for experimenting with food
%%classification functions

image = imread('images/ChickenSalad.jpg');

image = RedGreen(image);
imshow(image)


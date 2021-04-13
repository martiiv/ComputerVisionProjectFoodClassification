%%This matlab script will be used for experimenting with food
%%classification functions

image = imread('images/ChickenSalad.jpg');

green = Green(image);
red = Red(image);

imshow(red)
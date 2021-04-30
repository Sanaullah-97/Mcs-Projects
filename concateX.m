a=imread('sana.jpg');

b = imread('khan.jpg');

b=rgb2gray(a);
imshow(b);


subplot(2,2,1),imshow(a) %plots both the images in one figure
subplot(2,2,2),imshow(b)
combImg=cat(b,a);
imshow(combImg)
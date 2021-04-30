a=imread('sana.jpg');

a=histeq(a);
subplot(2,2,1), imshow(a);
subplot(2,2,2), imhist(a);
subplot(2,2,3), imhist(b);

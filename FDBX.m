a = imread('khan.jpg');
faceDetector = vision.CascadeObjectDetector;
bbox=step(faceDetector,a);
for j=1:size(bbox)
    xbox=bbox(j,:);
    subImage = imcrop(a, xbox);
    H = fspecial('disk',10);
    blurred = imfilter(subImage,H);
    a(xbox(2):xbox(2)+xbox(4),xbox(1):xbox(1)+xbox(3),1:end) = blurred; 
end
imshow(a);
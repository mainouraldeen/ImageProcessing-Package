close all
img = imread("A.bmp");
##figure, imshow(img, []), title('Original');
result = RemovePeriodicNoise(img);
figure, imshow(result,[]), title('Restored Image');
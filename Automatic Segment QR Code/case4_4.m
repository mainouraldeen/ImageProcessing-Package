function result = case4_4 (originalImg)

grayImg=rgb2gray(originalImg);
bwImg=im2bw(grayImg);

img = imerode(bwImg, strel('square',25));%el obj laz2 f objs abyd 7awleh

img = medfilt2(img,[10,10]);
largestObj=bwareafilt(~img,1);%3mlt ~ 3shan ana 3ayza akbar obj eswd
%figure,imshow(largestObj),title('awl akbar obj');

secoundLargest=bwareafilt(~img,2);
%figure,imshow(secoundLargest),title('tany akbar obj');

QR=secoundLargest-largestObj;
%figure,imshow(QR),title('QR');

stats = regionprops(QR, 'BoundingBox');
boundingBox = stats(1).BoundingBox;
cropedImage = imcrop(originalImg, [boundingBox(1), boundingBox(2), boundingBox(3), boundingBox(4)]);
rotatedImage = imrotate(cropedImage, (-57));

result = rotatedImage;
endfunction

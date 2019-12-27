function result = case4_1 (originalImg)

grayImg=rgb2gray(originalImg);
bwImg=im2bw(grayImg);

img = imerode(bwImg, strel('square',5));
img = medfilt2(img,[10,10]);
largestObj=bwareafilt(~img,1);%3mlt ~ 3shan ana 3ayza akbar obj eswd
#figure,imshow(largestObj),title('awl akbar obj');

secoundLargest=bwareafilt(~img,2);
#figure,imshow(secoundLargest),title('tany akbar obj');

QR=secoundLargest-largestObj;
%figure,imshow(QR),title('QR');
result=QR.*originalImg;
result = imrotate(result, (-32));

endfunction

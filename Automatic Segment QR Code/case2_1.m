function result = rotateFirst (origonal_img) #2.1
#img=rgb2gray(img);
thresh = graythresh(origonal_img);
img=im2bw(origonal_img,thresh);
img=~img; #3shan el background kolha white f howa shayf el sora kolha obj wa7ed

img = imdilate(img,strel('square',7));
img = medfilt2(img,[10,10]);

figure, imshow(img), title("AFTER DILATION");

im2=img.*origonal_img;
res = imrotate(im2,205);
figure, imshow(res), title("res");#so2al leeh ageb el l_img wkda tany?

[l_img, objs] = bwlabel(img); # counts el white objs
stats = regionprops(l_img,'BoundingBox', 'Orientation');
%
##for i = 1:objs
##    rectangle('Position', stats(i).BoundingBox, 'EdgeColor', 'r', 'LineWidth', 5);
##end
%
bounding_box = stats(1).BoundingBox;
bounding_box(1)
bounding_box(2)

extracted_QR = imcrop(origonal_img, [bounding_box(1),bounding_box(2),bounding_box(3),bounding_box(4)]);

result = imrotate(extracted_QR,210);
endfunction

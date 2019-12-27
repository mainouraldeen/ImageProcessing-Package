function res = case6_1 (img)

originalImg=img;
grayImg=rgb2gray(originalImg);
bwImg=im2bw(~grayImg);%3shan ana 3ayza el qr yb2o abyaad

img = imdilate(bwImg, strel('square',13));
img=imsmooth(img, "Gaussian");

[l_img,objs]=bwlabel(img);
stats = regionprops(l_img, 'BoundingBox','Extent');
count_Of_QR=0;
qrIndicies=[]
for i = 1: objs
  boundingBox = stats(i).BoundingBox;
  extent=stats(i).Extent
  diff=abs(boundingBox(3)-boundingBox(4))
  
  if extent>=0.85 && diff<=2 && boundingBox(3)>50
    count_Of_QR = count_Of_QR + 1;
    cropedImage = imcrop(originalImg, [boundingBox(1), boundingBox(2), boundingBox(3), boundingBox(4)]);
    
    figure, imshow(cropedImage), title(count_Of_QR);
    qrIndicies=[qrIndicies, i];
  end
end
count_Of_QR
qrIndicies %momkn b3d kda agbhom mn el sora el aslya


endfunction

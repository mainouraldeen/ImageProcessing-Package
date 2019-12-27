function result = case3_1_1_1(img) %3.1 1.1

[l,w,c]=size(img);
QR_Img=uint8(zeros(l,w,c));

thresh = graythresh(img);
img_bw=im2bw(img,thresh);
img_bw=~img_bw;

img_bw = imdilate(img_bw, ones(6,6));
[l_img,objs]=bwlabel(img_bw); 
objs
#figure, imshow(l_img), title('l_img img');

stats = regionprops(l_img,'BoundingBox', 'Orientation');



count_Of_QR=0;
objs
for i =1 : objs
  x_obj=stats(i).BoundingBox(1);
  y_obj=stats(i).BoundingBox(2);
  l_obj=stats(i).BoundingBox(3);
  w_obj=stats(i).BoundingBox(4);
  
  x_obj=uint64(x_obj);
  y_obj=uint64(y_obj);

  diff=abs(l_obj-w_obj);
  diff;
  if diff<=2 & l_obj > 20# 3shan law fih kaza square (3.1)
    test = zeros(l,w);
    test(l_img == i) = l_img(l_img == i);
    figure, imshow(label2rgb(test));
    stats(i).Orientation
    count_Of_QR=count_Of_QR+1;
    QR_Img(y_obj : y_obj+l_obj, x_obj : x_obj+w_obj,:)= img(y_obj:y_obj+l_obj, x_obj:x_obj+w_obj,:);  
  
  
  end
end

count_Of_QR;
result=QR_Img;

endfunction
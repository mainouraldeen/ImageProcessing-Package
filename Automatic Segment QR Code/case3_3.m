function result = case3_3 (origonal_img)
  
  thresh = graythresh(origonal_img);
  img_bw=im2bw(origonal_img,thresh);
  #figure, imshow(img_bw), title("img_bw");

  img = imdilate(img_bw, ones(6,6));
  #figure, imshow(img), title("imdilate img");
  
  # fih obj ktir awy so8aira w malhash lazma
  filtered_img=medfilt2(img,[5,5]);
  
  [l_img,objs]=bwlabel(filtered_img);
  objs

  first1_large_obj=bwareafilt(filtered_img, 1);
  first2_large_objs=bwareafilt(filtered_img, 2);
  

  QR = first2_large_objs - first1_large_obj;
  #figure, imshow(QR), title("QR");
  
  result = QR .* origonal_img;


endfunction

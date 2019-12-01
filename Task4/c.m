function res = c (img)

binaryImg=im2bw(img);
filledImg=imfill(binaryImg,'holes');
[l2_img,num_Of_Objs]=bwlabel(binaryImg);
num_Of_Objs #b

res=filledImg-binaryImg;
[l_img,num_Of_holes]=bwlabel(res);
num_Of_holes #c

endfunction

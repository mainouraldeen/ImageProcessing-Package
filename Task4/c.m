function res = c (img)

binaryImg=im2bw(img);
filledImg=imfill(binaryImg,'holes');

res=filledImg-binaryImg;
[l_img,num_Of_holes]=bwlabel(res);
num_Of_holes

endfunction

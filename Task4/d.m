function res = d (img)
binaryImg=im2bw(img);
binaryImg=binaryImg;
[l_img2,num_Of_objs]=bwlabel(binaryImg);
num_Of_objs

#str=strel('disk',5,0);
str=strel('square',15);
#res=imerode(binaryImg,str);
#res=imclose(binaryImg,str);
#res=imdilate(binaryImg,str);
res=imopen(binaryImg,str);
[l_img2,num_Of_after_open]=bwlabel(res);

num_of_objs_with_holes=num_Of_objs-num_Of_after_open

#lw e5tfa yb2a kan fe hole w el obj so8yr-lw fdl lesa mwgod yb2a kan fe 2 holes wl obj kber
#lw 3ayza a3rf meen kan fe hole wa7d ha3d kam wam wa7d e5tfa
#lw 3ayza a3rf meen kan fe 2 holes hakbr el element w el objs ele kan feha holes hyzedo (hyt2smo 2 objs) fa kda a2dr a3f meen ele zad
endfunction

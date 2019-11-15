function img_plus_man = add_man (background_img, man_img)

#resize image
[rows,cols,c]=size(background_img);
man_img=imresize(man_img,[rows,cols]);

man_mask=man_img(:,:,:)>0;#kda bgeb amakn el pixels el colored
background_img(man_mask)=man_img(man_mask);#overwrite el values fl background

img_plus_man=background_img;

endfunction
function man_img = extract_man (img)

blueC_img = img(:, :, 3);

#figure, imhist(blueC_img), title('hist');

blueC_img=conv2(blueC_img, ones(3, 3) / 9, 'same');
blueC_img=uint8(blueC_img);

#global threshold
blueC_img(blueC_img>95)=255;
blueC_img(blueC_img<=95)=0;

#figure, imshow(blueC_img), title('blue threshold');

neg_img=~blueC_img;#3shan a5le el man abyad

man_img=neg_img.*img;#b5le el man colored

endfunction
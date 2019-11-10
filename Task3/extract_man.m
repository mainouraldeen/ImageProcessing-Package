function man_img = extract_man (img)


gray_img = img(:, :, 3);


#gray_img= rgb2gray(img);

#gray_img=conv2(gray_img, ones(3, 3) / 9, 'same');
#gray_img=conv2(gray_img, ones(3, 3) / 9, 'same');
#gray_img=uint8(gray_img);
#figure, imshow(gray_img), title('uint8');


#edges_of_img=edge(gray_img, 'canny');

##figure, imshow(edges_of_img), title('edges_of_img');

#thick_edges_img=imdilate(edges_of_img, ones(5,5)); #make edges thicker

##figure, imshow(thick_edges_img), title('thick_edges_img');

#neg_img = ~thick_edges_img; 

[labeled_img, num] = bwlabel(gray_img); 

man_segment = ismember(labeled_img, 3) > 0;#extract man
figure, imshow(man_segment), title('man_segment');

segmented_img = label2rgb(labeled_img);  

man_img=segmented_img;



endfunction

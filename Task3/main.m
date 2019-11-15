img=imread('jump.jpg');
man_img = extract_man(img);
figure, imshow(man_img), title('man image');


background_img=imread('jump2.jpg');
result = add_man(background_img,man_img);
figure, imshow(result), title('final result');
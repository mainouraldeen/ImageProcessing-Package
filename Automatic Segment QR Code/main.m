close all
path = "6.2.bmp";
img = imread(path);
figure, imshow(img), title("Original");

if path == "1.1.bmp" | path == "3.1.bmp"
  disp('if 1.1 | 3.1');
  result = case3_1_1_1(img);
  figure, imshow(result), title("Segmented QR");

elseif path == "2.1.bmp" 
  disp('elseif 2.1');
  result = case2_1(img);
  figure, imshow(result), title("Segmented QR");

elseif path == "3.3.bmp"
  disp('elseif 3.3');
  result = case3_3(img);
  figure, imshow(result), title("Segmented QR");
 
elseif path == "4.1.bmp"
  disp('elseif 4.1');
  result = case4_1(img);
  figure, imshow(result), title("Segmented QR");
  
elseif path == "5.1.bmp" | path == "5.2.bmp" 
  disp('elseif 5.1');
  result = case5_1(img);
  figure, imshow(result), title("Segmented QR");
  
elseif path == "4.4.bmp"
  disp('elseif 4.4');
  result = case4_4(img);
  figure, imshow(result), title("Segmented QR");

elseif path == "6.1.bmp"
  disp('bonus 6.1');
  result = case6_1(img);
  figure, imshow(result), title("Segmented QR");
  
elseif path == "6.2.bmp"
  disp('bonus 6.2');
  result = case6_2(img);
  figure, imshow(result), title("Segmented QR");
    
endif

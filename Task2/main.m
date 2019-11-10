###Linear Filter######
img = imread('Moon.bmp');
linear = LinearFilter(img, ones(3)/9, "cutoff");

figure, imshow(img), title("Original");
figure, imshow(linear), title("Linear Filter");
#

###sobel######
img = imread('Joker.bmp');
horizontal = sobelMask(img, 'H');
vertical = sobelMask(img, 'V');

figure, imshow(img), title("Original");
figure, imshow(horizontal), title("Horizontal");
figure, imshow(vertical), title("Vertical");

###Mean Filter######

img = imread('Joker.bmp');
mean = meanFilter(img, 3, 11);
figure, imshow(img), title("Original");
figure, imshow(mean), title("Mean");


###Laplacian Sharpening######
img = imread("Moon.bmp");
lap = LaplacianSharp(img);
figure, imshow(img), title("Original");
figure, imshow(lap), title("Laplacian sharpening");


###Gaussian1######
g1 = gauss1(15, 50);
figure, imshow(g1), title("Gaussian 1");
#

###Gaussian2######
g2 = gauss2(5);
figure, imshow(g2), title("Gaussian 2");

###EgdeMagnit######
img = imread("Joker.bmp");
edgeMag = EgdeMagnit (img);
figure, imshow(img), title("Original");
figure, imshow(edgeMag), title("EgdeMagnit");

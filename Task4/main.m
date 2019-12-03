img=imread('test.png');
cRes=c(img);
#figure, imshow(cRes),title("how many holes?");

#dRes=length(d(img));

gRes=g(img);
figure, imshow(gRes),title("circular objects that have no holes");
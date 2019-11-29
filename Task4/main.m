img=imread('morph.png');
cRes=c(img);
figure, imshow(cRes),title("how many holes?");

dRes=d(img);
figure, imshow(dRes),title("how many objs have one-more holes?");
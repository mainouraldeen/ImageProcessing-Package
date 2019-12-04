function res = a (img)
binaryImg=im2bw(img);
[l,w,c]=size(binaryImg);
siz=l*w;
res=sum(sum(binaryImg))/siz;
endfunction

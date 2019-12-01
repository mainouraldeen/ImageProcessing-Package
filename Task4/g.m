function res = g(img)
[l,w,c]=size(img);
squImg=zeros(l,w);
binaryImg=im2bw(img);
[l_img,objs]=bwlabel(binaryImg);

stats = regionprops(l_img,'BoundingBox');

siz=size([stats.BoundingBox])(2)
counter=0;

for i =1 :4: siz
  x=[stats.BoundingBox](i);
  y=[stats.BoundingBox](i+1);
  l=[stats.BoundingBox](i+2);
  w=[stats.BoundingBox](i+3);
  
  x=uint8(x);
  y=uint8(y);
  
  squImg(x:x+l,y:y+w)=1;
  if binaryImg(x,y)==1 
    disp("square!");
    end
end


res=squImg;
no_of_sqs_with_holes= d(l_img)
#holes=find([stats.EulerNumber]<1); 
#num_Of_objs_with_holes=length(holes)

endfunction

function res = g(img)
[l,w,c]=size(img);
square_Img=zeros(w,l);
circle_Img=zeros(w,l);
binaryImg=im2bw(img);
[l_img, objs]=bwlabel(binaryImg);

stats = regionprops(l_img,'BoundingBox');

siz=size([stats.BoundingBox])(2)
counter=0;
[stats.BoundingBox]
for i =1 : objs
  x=stats(i).BoundingBox(1);
  y=stats(i).BoundingBox(2);
  l=stats(i).BoundingBox(3);
  w=stats(i).BoundingBox(4);
  
  x=uint64(x);
  y=uint64(y);

  if binaryImg(y, x)==1 
    counter=counter+1;
#    square_Img(x:x+l, y:y+w)= binaryImg(x:x+l, y:y+w);
    square_Img(y:y+l, x:x+w)= binaryImg(y:y+l, x:x+w);
  else 
#    circle_Img(x:x+l, y:y+w)= binaryImg(x:x+l, y:y+w);
    circle_Img(y:y+l, x:x+w)= binaryImg(y:y+l, x:x+w);
  end
end


 res = img;
 figure, imshow(square_Img), title("Squares");
 figure, imshow(circle_Img), title("Circles");

square_holes_indicies = d(square_Img)
circle_holes_indicies = d(circle_Img)

lenOfSqsWithHoles=length(square_holes_indicies)
lenOfCrclWithHoles=length(circle_holes_indicies)
#holes=find([stats.EulerNumber]<1); 
#num_Of_objs_with_holes=length(holes)
#for i = 1 : lenOfSqs
#[i,m]=bwlabel(square_Img);
figure, imshow(l_img(square_holes_indicies))
#figure, imshow(l_img)
#endfor

endfunction

function res = g(img)
[l,w,c]=size(img);
binaryImg=im2bw(img);
[l_img, objs]=bwlabel(binaryImg);

square_Img=zeros(w,l);
circle_Img=zeros(w,l);
stats = regionprops(l_img,'BoundingBox');

count_Of_Squares=0;

for i =1 : objs
  x=stats(i).BoundingBox(1);
  y=stats(i).BoundingBox(2);
  l=stats(i).BoundingBox(3);
  w=stats(i).BoundingBox(4);
  
  x=uint64(x);
  y=uint64(y);

  if binaryImg(y, x)==1 
    count_Of_Squares=count_Of_Squares+1;
    square_Img(y:y+l, x:x+w)= binaryImg(y:y+l, x:x+w);
  else 
    circle_Img(y:y+l, x:x+w)= binaryImg(y:y+l, x:x+w);
  end
end
count_Of_Squares
#f
[squares,num]=bwlabel(square_Img);

square_holes_indicies = d(square_Img,-1);

Count_of_Square_Objects_with_holes=length(square_holes_indicies)

figure, imshow(ismember(squares, square_holes_indicies),[]),title("Square objects that have holes");
#g
[circles,num]=bwlabel(circle_Img);

circle_holes_indicies = d(circle_Img,1);

Count_of_circles_Objects_with_holes=length(circle_holes_indicies)

figure, imshow(ismember(circles, circle_holes_indicies),[]),title("circles objects that have no holes");

res = square_Img;
endfunction

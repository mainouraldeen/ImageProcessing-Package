function indices = d (img,num)
binaryImg=im2bw(img);
stats = regionprops(binaryImg,'EulerNumber');#[(1) no holes-- (-1) 1 hole -- (0) more than 1 hole]

if(num==-1)
  indices=find([stats.EulerNumber]<1); #return objs indices that have holes
  Num_Of_Objs_With_holes=length(indices)
else
  indices=find([stats.EulerNumber]==1); #return objs indices that have NO holes

 end

endfunction

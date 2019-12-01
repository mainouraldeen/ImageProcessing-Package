function num_Of_objs_with_holes = d (img)
binaryImg=im2bw(img);
stats = regionprops(binaryImg,'EulerNumber');#[(1) no holes-- (-1) 1 hole -- (0) more than 1 hole]
[stats.EulerNumber]
holes=find([stats.EulerNumber]<1); #return objs indices that have holes
num_Of_objs_with_holes=length(holes)

endfunction

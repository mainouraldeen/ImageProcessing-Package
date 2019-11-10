function result = sobelVertical(img)
    
  mask = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
  result = LinearFilter(img, mask, 'absolute');
  # result = conv2(img, mask);
#  result = abs(result);
  result = uint8(result);
  
endfunction

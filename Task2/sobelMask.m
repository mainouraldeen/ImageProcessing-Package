function result = sobelMask(img, choice)
  if (strcmp(choice, 'H') == 1)
    result = sobelHorizontal(img);
  else
    result = sobelVertical(img);
  endif
endfunction

function G = EgdeMagnit (img)
X = sobelHorizontal(img);
Y =sobelVertical(img);
G = abs(X+Y);
endfunction

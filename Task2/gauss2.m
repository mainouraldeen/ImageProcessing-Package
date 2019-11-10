function gaussfilter = gauss2 (sigma)

   N=floor((3.7*sigma)-0.5);
   size=(2*N)+1;
  gaussfilter=gauss1(size, sigma);
endfunction

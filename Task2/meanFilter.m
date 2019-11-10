function result = meanFilter (img, filterRows, filterCols)
  
  filter = ones(filterRows, filterCols) ./ (filterRows * filterCols);
  result = LinearFilter(img, filter, "cutoff");


endfunction

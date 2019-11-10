function Out = LinearFilter(I, Filter, PostProc)
    
    doubledImg = double(I);
  
    rowsOfFilter = size(Filter, 1);
    colsOfFilter = size(Filter, 2);
    
                          # kam row
    paddedImg = padarray(doubledImg,[double(uint8(rowsOfFilter / 2)-1),
    double(uint8(colsOfFilter / 2) - 1)],# kam col
    0, 'both');#0: el value ely h3ml biha padding
               #both: fo2 w t7t, ymin w shaml
    

    Out = zeros(size(doubledImg)) ;
   
    #loop on size of original img before padding = size of Out matrix
    for i = 1 : size(doubledImg, 1)#rows

     for j = 1 : size(doubledImg, 2)#cols
       
        Out(i,j) = sum(sum((paddedImg(i:i+rowsOfFilter-1, j:j+colsOfFilter-1)) .* Filter));

      end
    end
    

   if (strcmp(PostProc, "cutoff") == 1)
        Out = uint8(Out);
    elseif (strcmp(PostProc, "absolute") == 1)
        Out = abs(Out);
    end
  
end
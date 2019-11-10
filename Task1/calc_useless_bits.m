function useless = calc_useless_bits(img, per)

    occurrences = zeros(1,8);
    img = rgb2gray(img);
    digit = 1;
     
    for i =1 : 8
        result = bitand(img(:,:,1),digit);
        #occurances(log2(digit)+1)+=sum(sum(result))
        occurrences(log2(digit)+1)+=sizeof(img) - sum(result(:) == 0);
        digit = bitshift(digit,1);
    end
    
    useless = [];
    index = 1;
    for i = 1 : 8
       if occurrences(i)/sizeof(img) < per
           useless(index) = i;
           index++;
       end
    end
end
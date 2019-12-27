function RestoredImage = RemovePeriodicNoise(img)

originalImg=img;
originalImg=double(originalImg);
[rows,cols,c]=size(originalImg);
RestoredImage=zeros(rows,cols,c);

for channel = 1 : c
    img=originalImg(:,:,channel);
    ffImg = fftshift(fft2(img));
##    mat=power(abs(ffImg),2);
##    fLog = mat2gray(log(mat)+1);

    realPart = real(ffImg);
    imagPart = imag(ffImg);

    realPart = power(realPart, 2);
    imagPart = power(imagPart, 2);

    mag = power(realPart + imagPart, 0.5);
    fLog = log(mag);


figure, imshow(fLog,[]);


 for i = 2 : rows-1

     for j = 2 : cols-1
 
       if fLog(i,j)>fLog(i+1,j) && fLog(i,j)>fLog(i-1,j)&&fLog(i,j)>fLog(i+1,j) &&fLog(i,j)>fLog(i,j-1)&&fLog(i,j)>fLog(i,j+1)&&fLog(i,j)>fLog(i-1,j-1) &&fLog(i,j)>fLog(i-1,j+1) &&fLog(i,j)>fLog(i+1,j-1) &&fLog(i,j)>fLog(i+1,j+1)
        fLog(i,j) = 0;
          ffImg(i,j)=0;
        
        end
    end
    
end
    
figure, imshow(fLog,[]);
    
    if channel==1
      R = ifft2(ifftshift(ffImg));
    elseif channel==2
      G = ifft2(ifftshift(ffImg));
    else
      B = ifft2(ifftshift(ffImg));
    end 
end

RestoredImage(:,:,1) = R;
RestoredImage(:,:,2) = G;
RestoredImage(:,:,3) = B;

endfunction

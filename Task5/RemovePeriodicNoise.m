function RestoredImage = RemovePeriodicNoise(img)
originalImg=img;
[rows,cols,c]=size(img);
RestoredImage=zeros(rows,cols);
##Red
img=originalImg(:,:,1);
img = double(img);
ffImg = fftshift(fft2(img));

fLog = log(1 + abs(ffImg));
filter = (fLog > .7*max(fLog(:)) ) | (fLog < .25*max(fLog(:)) );
figure,imshow(filter);

R = abs(ifft2(ffImg.*filter));

##Green
img=originalImg(:,:,2);
img = double(img);
ffImg = fftshift(fft2(img));

fLog = log(1 + abs(ffImg));
filter = (fLog > .7*max(fLog(:)) ) | (fLog < .25*max(fLog(:)) );#bygeeb amakn el no2at ele akbar mn ele 7awleha ?
figure,imshow(filter);
G = abs(ifft2(ffImg.*filter));

##Blue
img=originalImg(:,:,3);
img = double(img);
ffImg = fftshift(fft2(img));

fLog = log(1 + abs(ffImg));
filter = (fLog > .7*max(fLog(:)) ) | (fLog < .25*max(fLog(:)) );
figure,imshow(filter);

B = abs(ifft2(ffImg.*filter));
##
RestoredImage(:,:,1) = R;
RestoredImage(:,:,2) = G;
RestoredImage(:,:,3) = B;
endfunction

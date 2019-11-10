function gaussFilter = gauss1 (size, sigma)
  img=imread('Joker.bmp');
  doubleimg=double(img);
  padimage=padarray(doubleimg,[1 1],0);
  indicesStart=floor((-size/2)+1); %floor(-size/2); %cast
  %indicesStart= -1
  gaussFilter=zeros(size,size);
  x=indicesStart;
  sum=0;
  
  for i=1 : size;    
    y=indicesStart;
    for j = 1 : size;  
      
      res=exp(-1*((x)^2+(y)^2)/(2*sigma*sigma));
      out=1/(2*pi*sigma*sigma);
      gaussFilter(i,j)=out*res;
      y=y+1;
      sum = sum+gaussFilter(i,j);
    end;
    x=x+1;
  end;
  
gaussFilter=double(gaussFilter *(1/sum)); 


  i =LinearFilter(padimage, gaussFilter,"cutoff");

figure, imshow(img), title('original'); 

gaussFilter = i;

endfunction

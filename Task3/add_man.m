function img_plus_man = add_man (Ibg, Iman)

% Read background and man image

% Adjust man's image size to the background image
sz = size(Ibg);
Iman = imresize(Iman,sz(1:2));
% Create mask
BWmask = Iman(:,:,1) > 12;
BWmask = cat(3,BWmask,BWmask,BWmask);
% Add masked man to the background
Ibg(BWmask) = Iman(BWmask);
% Show the result
figure
imshow(Ibg)


endfunction

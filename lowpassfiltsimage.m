im=mat2gray(noisy_MRI_image); %underexposed

figure(1)
imshow(im)

h = fspecial('average',3);
i2=imfilter(im,h);
figure(2)
imshow(i2)

i3=medfilt2(im);
figure(3)
imshow(i3);

% 
% hh=[-1 -1 -1;2 2 2; -1 -1 -1];
% hv=[-1 2 -1;-1 2 -1;-1 2 -1];
% 
% hline=imfilter(im,hh);
% vline=imfilter(im,hv);
% 
% figure(2);
% imshow(hline);
% figure(3);
% imshow(vline);  
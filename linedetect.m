im=imread('fluoroscopic.jpg'); %underexposed
im=rgb2gray(im);
figure(1)
imshow(im)

hh=[-1 -1 -1;2 2 2; -1 -1 -1];
hv=[-1 2 -1;-1 2 -1;-1 2 -1];

hline=imfilter(im,hh);
vline=imfilter(im,hv);

figure(2);
imshow(hline);
figure(3);
imshow(vline);
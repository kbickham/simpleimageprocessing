im=imread('hip_replace.tif')
figure(1)
imshow(im)

%smooth original image
h=fspecial('average',9); % easy , effective way to blur, 10 is size
i2=imfilter(im,h);
i3=im-i2; %grab den fuckin de TAILS. subtract smoothed from original

figure(2)
i4=im+(1.6*i3); %alpha times detail model image
imshow(i4)
%12/4/17 example
%
im=imread('Skeleton.png');
figure(1);
imshow(im)
%to enhance contrast, we need to convert from rgb
%take to double , if performing more operations to eliminate overflow

%conversion
im=rgb2gray(im);
im=im2double(im);

%which operation to do first?
% first apply high pass (laplacian)

%generate mask
h=fspecial('laplacian',0); % 0 is default, defines weights for mask
%apply filter under new var

i2=imfilter(im,h); % h?
figure(2)

%imshow(i2); % this is barely visible
%imshow(mat2gray(i2)); %so show in this format


%now subtract this from the original image
i3=im-i2;
imshow(i3);
%enhanced decently, but now to decrease noise
%don't use avg filter..it will blue too much
% median blurs the least while removing noise
i4=medfilt2(i3); %2 dimensional median filter, default is 3x3 mask
% take this and add it back to the original 
i5=im+i4;
figure(3)
%imshow(i4); % 

%if we want more details, now start adjusting contrast
%more filtering will make bright brighter, and dark darker = fail
%
%hist eq would bring the background out more
% therefore, we will use gamma correction
%figure(4);
i6=imadjust(i5,[],[],.5);% 1 = same, percentage for gamma djust
%imshow(i5); 

%a modication is to apply a filter
%create a custom mask
%multiply back to the original image
%ging back to i3, instead use a gausian filter
i7=im.*i3;
i7=im+i7;
im7=imadjust(i7,[],[],.5);
imshow(i7);


%image files
i1 = imread("iron-man-marvel-chrome-theme-wallpaper.png");
i2 = imread("iron-man-marvel-chrome-theme-wallpaper2.png");
i3 = imread("iron-man-marvel-chrome-theme-wallpaper3.png");
i4 = imread("iron-man-marvel-chrome-theme-wallpaper4.png");
i5 = imread("iron-man-marvel-chrome-theme-wallpaper5.png");

%concatened array full of images
m = cat(4,i1,i2,i3,i4,i5);

%create rgb stacks, rgb stacks will be 3
red = m(:,:,1);
green = m(:,:,2);
blue = m(:,:,3);

%create array of zeros and pass size of m within filler
filler = zeros(size(m),'uint8');

%Concatenate each RGB with filler and m
rgbImageR = cat(3,m,filler,filler);
rgbImageG = cat(3,filler,m,filler);
rgbImageB = cat(3,filler,filler,m);

%compute all colors into one
RGB = red + green + blue;
imshow(RGB);

%specify the rows, columns, rgb and image number with m using indexing
a = m(:,:,:,2);
b = m(:,:,:,5);

%apply blur effects on that specific location of rows and columns applying
%image filter to simulate the blur at that given location
a(5:200,8:300,:) = b(5:200,8:300,:);

imshow(a)

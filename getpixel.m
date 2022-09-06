i1 = imread("iron-man-marvel-chrome-theme-wallpaper.png");
i2 = imread("iron-man-marvel-chrome-theme-wallpaper2.png");
i3 = imread("iron-man-marvel-chrome-theme-wallpaper3.png");
i4 = imread("iron-man-marvel-chrome-theme-wallpaper4.png");
i5 = imread("iron-man-marvel-chrome-theme-wallpaper5.png");

m = cat(4,i1,i2,i3,i4,i5);

%create rgb stacks, rgb stacks will be 3
red = m(:,:,1);
green = m(:,:,2);
blue = m(:,:,3);

filler = zeros(size(m),'uint8');

rgbImageR = cat(3,m,filler,filler);
rgbImageG = cat(3,filler,m,filler);
rgbImageB = cat(3,filler,filler,m);

RGB = red + green + blue;
imshow(RGB);

a = m(:,:,:,2);
b = m(:,:,:,5);

a(5:200,8:300,:) = b(5:200,8:300,:);

imshow(a)

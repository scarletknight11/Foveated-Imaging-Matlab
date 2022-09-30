%image files
i1 = imread("iron-man-marvel-chrome-theme-wallpaper.png");
i2 = imread("iron-man-marvel-chrome-theme-wallpaper2.png");
i3 = imread("iron-man-marvel-chrome-theme-wallpaper3.png");
i4 = imread("iron-man-marvel-chrome-theme-wallpaper4.png");
i5 = imread("iron-man-marvel-chrome-theme-wallpaper5.png");

%concatened array full of images
m = cat(4,i1,i2,i3,i4,i5);

%check each rgb invidually
red = m(:,:,1);
green = m(:,:,2);
blue = m(:,:,3);

%create/update rgb stacks, rgb stacks will be 5
red = m(:,:,1,:);
green = m(:,:,2,:);
blue = m(:,:,3,:);

r = squeeze(red);
g = squeeze(green);
b = squeeze(blue);

rgb = cat(3,r,g,b);
%[r,g,b] =  imsplit(rgb);

rgb = m(:,:,:,3);

%specify the rows, columns, rgb and image number with m using indexing
a = m(:,:,:,2);
b = m(:,:,:,5);

%apply blur effects on that specific location of rows and columns applying
%image filter to simulate the blur at that given location
a(5:200,8:300,:) = b(5:200,8:300,:);

imshow(a);
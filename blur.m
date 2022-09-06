I = imread("iron-man-marvel-chrome-theme-wallpaper.png");
i2 = imread("iron-man-marvel-chrome-theme-wallpaper2.png");
i3 = imread("iron-man-marvel-chrome-theme-wallpaper3.png");
i4 = imread("iron-man-marvel-chrome-theme-wallpaper4.png");
i5 = imread("iron-man-marvel-chrome-theme-wallpaper5.png");

imshow(I);

% creates tp 2D filter, takes in parmater for type of blur (motion)
% takes in amount of pixels and degrees (50 pixels & 10 degrees)
PSF = fspecial('motion',50,10);
blurred = imfilter(I,PSF,'conv','circular');
imshow(blurred)

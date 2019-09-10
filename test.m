function y=test(path)
image = imread(path);
image = rgb2gray(image);
y=uint8(newimage);
%display(newimage);
end
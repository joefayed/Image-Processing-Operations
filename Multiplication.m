function y = Multiplication( path1 , path2 )
image1= imread(path1);
image1=rgb2gray(image1);
image2= imread(path2);
image2=rgb2gray(image2);
[rows,cols]=size(image1);
newimage= zeros(rows,cols);
for i=1 :rows
    for j=1:cols
        newimage(i,j)=image1(i,j)*image2(i,j);
    end
end
y=uint8(newimage);
end
function y = Log( path1 )
image1= imread(path1);
image1=rgb2gray(image1);
[rows,cols]=size(image1);
image1=double(image1);
for i=1 :rows
    for j=1:cols
        image1(i,j)=2* log(image1(i,j)+1);
    end
end
y=uint8(image1);
end
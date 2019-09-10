function y = Dilation2( path1 )
image1= imread(path1);
%image1=rgb2gray(image1);
%image1=double(image1);
[rows,cols]=size(image1);
for i = 2:rows-1
    for k = 2:cols-1
        max=-999;
        for x=i-1:i+1
            for y=k-1:k+1
                if (image1(x,y)>max)
                    max=image1(x,y);
                end
            end
        end
        image1(i-1,k-1)=max;
    end
end
y=uint8(image1);
end
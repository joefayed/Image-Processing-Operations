function y = Erosion2(path1)
image1= imread(path1);
%image1=rgb2gray(image1);
%image1=double(image1);
[rows,cols]=size(image1);
for i = 2:rows-1
    for k = 2:cols-1
        min=999;
        for x=i-1:i+1
            for y=k-1:k+1
                if (image1(x,y)<min)
                    min=image1(x,y);
                end
            end
        end
        image1(i-1,k-1)=min;
    end
end
y=uint8(image1);
end


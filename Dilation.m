function y = Dilation( path1 )
image1= imread(path1);
image1=rgb2gray(image1);
paddedImage=padarray(image1,[1 1]);
[rows,cols]=size(image1);
paddedImage=im2bw(image1,0.5);
b=[1 0 1;0 0 1;1 0 0];
b = flipud(fliplr(b));
newImage = zeros(rows-2,cols-2);
for i = 2:rows-1
    for k = 2:cols-1
        
        %array(1) = paddedImage(i-1,k-1);
        if(paddedImage(i-1,k-1) == 1 && b(1,1) == 1)
            newImage(i,k) = 1;
        end
        %array(2) = paddedImage(i-1,k);
        if(paddedImage(i-1,k) == 1 && b(1,2) == 1)
            newImage(i-1,k-1) = 1;
        end
        
        %array(3) = paddedImage(i-1,k+1);
        if(paddedImage(i-1,k+1) == 1 && b(1,3) == 1)
            newImage(i-1,k-1) = 1;
        end
        %array(4) = paddedImage(i,k-1);
        if(paddedImage(i,k-1) == 1 && b(2,1) == 1)
               newImage(i-1,k-1) = 1;
        end
        %array(5) = paddedImage(i,k);
        %if(paddedImage(i,k) == 1 && b(2,2) == 1)
         %   newImage(i-1,k-1) = 1;
        %end
        %array(6) = paddedImage(i,k+1);
        if(paddedImage(i,k+1) == 1 && b(2,3) == 1)
            newImage(i-1,k-1) = 1;
        end
        %array(7) = paddedImage(i+1,k-1);
        if(paddedImage(i+1,k-1) == 1 && b(3,1) == 1)
            newImage(i-1,k-1) = 1;
        end
        %array(8) = paddedImage(i+1,k);
        if(paddedImage(i+1,k) == 1 && b(3,2) == 1)
            newImage(i-1,k-1) = 1;
        end
        %array(9) = paddedImage(i+1,k+1);
        if(paddedImage(i+1,k+1) == 1 && b(3,3) == 1)
            newImage(i-1,k-1) = 1;
        end
    end
end
y=newImage;
end
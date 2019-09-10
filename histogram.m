function y=histogram(path)
image = imread(path);
image = rgb2gray(image);
image=double(image);
%image = [6 15 8 4; 9 2 14 10;13 16 3 12;3 11 7 1];
freq = zeros(256,1);
[rows,cols] = size(image);
for l=1:256
    for i=1:rows
        for k=1:cols
            if image(i,k) == l
                freq(l) = freq(l)+1;
            end
        end
    end
end
zozo=rows*cols;
for i=1:256
    freq(i)=freq(i)/zozo;
end
Cumfreq = zeros(256,1);
tot=0;
for i=1:256
    
    tot = tot + freq(i);
    
    Cumfreq(i) = tot;
end

for i=1:256
    Cumfreq(i) = Cumfreq(i)*255;
end
for i=1:rows
    for k=1:cols
       
        image(i,k) = Cumfreq(image(i,k)+1);
    end
end
y = uint8(image);
end
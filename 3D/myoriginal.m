x(:,:,:)=255;

for i = 20:80
    for j = (i+80):160%red traingle
        x(i,j,1)= 1;
        x(i,j,2)= 0;
        x(i,j,3)= 0;
    end 
end

for i = 120:180
    for j = i:160
        x(i,j,1)= 0;
        x(i,j,2)= 1;
        x(i,j,3)= 0;
    end 
end

for j = 20:80 % blue traingle
    for i = j:80
        x(i,j,1)= 0;
        x(i,j,2)= 0;
        x(i,j,3)= 1;
    end 
end

for i = 20:80 % pink traingle
    for j = i:80
        x(i,j,1)= 1;
        x(i,j,2)= 0;
        x(i,j,3)= 1;
    end 
end


imshow(x)
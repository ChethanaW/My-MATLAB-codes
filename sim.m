x(:,:,:)= 255;
for i = 1:50
    for j=50:i+50
        x(i,j,1) =0;
        x(i,j,2) =0;
        x(i,j,3) =255;
        
        
    end
end
for i=1:50
    for j=50:-1:51-i
        x(i,j,1) =0;
        x(i,j,2) =0;
        x(i,j,3) =255;
    end
end


imshow(x)

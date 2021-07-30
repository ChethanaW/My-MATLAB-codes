% front face
for i= 1:8
    hold on
    grid on
    plot([1 2 2 1],[0 0 2 2],'or')
    pause (0.5)
    x_front = [0 5 5 0];
    y_front = [0 0 5 5];
    z_front = [0 0 0 0];
    patch(x_front,y_front,z_front,'y','FaceAlpha',0.5)
    hold off
    plot([1 2 2 1],[0 0 2 2],'or')
    pause (0.5)
    x_front = [0 5 5 0];
    y_front = [0 0 5 5];
    z_front = [0 0 0 0];
    patch(x_front,y_front,z_front,'y','FaceAlpha',0.5)
    
    
end


x_up = [0 5 5 0];
y_up = [0 0 5 5];
z_up = [4 4 4 4];
patch(x_up,y_up,z_up,'y','FaceAlpha',0.5)

x_west = [0 5 5 0];
y_west = [0 0 0 0];
z_west= [0 0 4 4];
patch(x_west,y_west,z_west,'g','FaceAlpha',0.5)

x_east = [0 5 5 0];
y_east = [5 5 5 5];
z_east= [0 0 4 4];
patch(x_east,y_east,z_east,'b','FaceAlpha',0.5)

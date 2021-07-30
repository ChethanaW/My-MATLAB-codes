x_front = [0 3 3 2 2 1 1 0]
y_front = [0 0 0 0 0 0 0 0]
z_front = [0 0 1 1 2 2 3 3]
patch(x_front,y_front,z_front,'r','FaceAlpha',0.5)

x_right = [3 3 3 3]
y_right = [0 2 2 0]
z_right = [0 0 1 1]
patch(x_right,y_right,z_right,'b','FaceAlpha',0.5)

x_left = [0 0 0 0 0 0]
y_left = [0 0 1 1 2 2]
z_left = [0 3 3 2 2 0]
patch(x_left,y_left,z_left,'b','FaceAlpha',0.5)

x_back = [3 3 2 2 0 0]
y_back = [2 2 2 2 2 2]
z_back = [0 1 1 2 2 0]
patch(x_back,y_back,z_back,'b','FaceAlpha',0.5)

x_top1 = [0 0 1 1]
y_top1 = [0 1 1 0]
z_top1 = [3 3 3 3]
patch(x_top1,y_top1,z_top1,'b','FaceAlpha',0.5)

x_top2 = [1 1 0 0 2]
y_top2 = [0 1 1 2 2]
z_top2 = [2 2 2 2 2]
patch(x_top2,y_top2,z_top2,'b','FaceAlpha',0.5)

x_top3 = [2 2 3 3]
y_top3 = [0 2 2 0]
z_top3 = [1 1 1 1]
patch(x_top3,y_top3,z_top3,'b','FaceAlpha',0.5)

x_side1 = [1 1 1 1]
y_side1 = [0 0 1 1]
z_side1 = [3 2 2 3]
patch(x_side1,y_side1,z_side1,'b','FaceAlpha',0.5)

x_side2 = [1 1 0 0]
y_side2 = [1 1 1 1 ]
z_side2 = [2 3 3 2]
patch(x_side2,y_side2,z_side2,'b','FaceAlpha',0.5)

x_side3 = [2 2 2 2]
y_side3 = [0 2 2 0];
z_side3 = [1 1 2 2]
patch(x_side3,y_side3,z_side3,'b','FaceAlpha',0.5)

x_base = [0 3 3 0]
y_base = [0 0 2 2 ]
z_base = [0 0 0 0]
patch(x_base,y_base,z_base1,'b','FaceAlpha',0.5)




x=[0.979 10.789 37.189 1059.189];
y=[0.022472 0.002039 0.000594 0.00002077];
plot(x,y)
title('Current versus resistance for variations of resistances in series')
xlabel('Total resistance')
ylabel('Current')
text(0.979,0.022472,'R1')
text(10.789,0.002039,'R1+R2')
text(37.189,0.000594,'R1+R2+R3')
text(1059.189,0.00002077,'R1+R2+R3+R4')



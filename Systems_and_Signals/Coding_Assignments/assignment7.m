

fs = 100;
t = 0: 1/fs : 700;
x = sin(400*pi*t)% + 2* cos(150*pi*t); 
test = fft(x);
plot(t, test)


ustep=[zeros(1,2) ones(1,48)];
n=-2:47;
a=0.5;
xa=a.^n;
for i=1:50,
x(i)=xa(i)*ustep(i);
end
h=ustep;
y=conv(x,h);
ny=-4:94;
stem(ny,y);

k = -10:1:10;
x = heaviside(k+2) - heaviside(k-3)
h = heaviside(k+7) - heaviside(k-8)
subplot(3,1,1),stem(k,x)
subplot(3,1,2),stem(k,h)
y=conv(x,h);
ny=-4:10;
subplot(3,1,3),stem(ny,y)

x = input('Enter values of x(n): ');
zerox = input('Zero Position of x: ');
h = input('Enter values of h(n): ');
zeroh = input('Zero Position of h: ');
k1 = -(length(h)-1);
k2 = length(x)+length(h)-1;
kstart = 1;
kend = k2 - k1 + 1;
xk = heaviside(k+2) - heaviside(k-3)
hk = heaviside(k+4) - heaviside(k-5)

h = flip(h);
for i=1:length(h)
  hk(i+zeroh-1) = h(i);
endfor
shift = 0;
for j=1:k2-zeroh+1+1
  X(shift+1) = 0;
  for i=1:length(h)+zeroh-1
    X(shift+1) = X(shift+1) + hk(i)*xk(i+shift);
  endfor
  shift = shift+1;
endfor
disp('Value of x(k): ');
disp(xk);
disp('Value of h(-k): ');
disp(hk);
disp('Convolution Sum: ');
disp(X);
subplot(3,1,1);
stem(1:length(xk),xk);
title('x(n)');
subplot(3,1,2);
stem(1:length(hk),hk);
title('h(n)');
subplot(3,1,3);
stem(1:length(X),X);
title('X(m)');



k = -10:1:10;
x1 = heaviside(k+8) - heaviside(k-3)
x2 = heaviside(k+5) - heaviside(k-4)
x3 = heaviside(k+4) - heaviside(k-5)
x4 = heaviside(k+3) - heaviside(k-6)
x5 = heaviside(k+2) - heaviside(k-7)
x6 = heaviside(k+1) - heaviside(k-8)
stem(k,x1+x2+x3+x4+x5+x6)
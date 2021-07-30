%https://www.mathworks.com/help/symbolic/dsolve.html

syms t
diff(exp(-4*t),t)
 %ans = -4*exp(-4*t)

% 3.2) i) c)
syms y(t) a b
eqn = diff(y,t,2) + 4*diff(y,t) +8*y == -4*exp(-4*t) + exp(-4*t);
Dy = diff(y,t);
cond = [y(0)==b, Dy(0)==0];
ySol(t) = dsolve(eqn,cond);

%(3sin(2t)*exp(-4t)*(cos(2t) - sin(2t)))/8 - (3cos(2t)*exp(-4t)*(2cos(2t) + 2sin(2t)))/16 + cos(2t)*exp(-2t)*(b + 3/8) + sin(2t)*exp(-2t)*(b - 3/8)
 
%iv)
syms t a b
eqn = a*exp(-1*t) + b*t*exp(-1*t);
diff(eqn,t)
diff(eqn,t,2)
 %ans = b*exp(-t) - a*exp(-t) - b*t*exp(-t)
 
syms y(t) a b
eqn = diff(y,t,2) + 4*y(t) == 5*4*t*exp(-1*t);
Dy = diff(y,t);
cond = [y(0)==-2, Dy(0)==0];
ySol(t) = dsolve(eqn,cond);

%- (5*exp(-4*t))/9 - (exp(-t)*(240*t - 108*exp(t) + 160))/36

%3.5 iii)
syms t
% t = 0:0.01:10; 
x= heaviside(t);
h = heaviside(t);
y = conv (x, h);



%Lab3
s(t) = a*1(1+k*m(t)).*cos(2*pi*f*t)
f = 20k
a = 10
k =0.2


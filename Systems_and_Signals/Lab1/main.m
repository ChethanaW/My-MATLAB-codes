%Q1----------------------------------;
%a);
clear;
t1 = 0:0.01:10; % 0<= t <=10
theta = pi/3; % 60 degrees
f = 2; % w = 2*pi*f
x1 = 0.1*sin(t1) + 0.2*cos( 2*pi*f*t1 + theta);
plot(t1,x1);
xlabel('Time');
ylabel('x1(t) = 0.1sin(t) + 0.2cos(ωt + θ)');
grid;

%b);
for theta = 0:pi/4:pi % θ from 0 to 180 degrees(pi rad) with increments of 45 degrees (pi/4 rad)
    hold on;
    t1 = 0:0.01:10; % 0<= t <=10
    f = 2; % w = 2*pi*f
    x2 = 0.1*sin(t1) + 0.2*cos( 2*pi*f*t1 + theta);
    plot(t1,x2);
end
legend('0.1sin(t)+0.2cos(wt+pi/3)','0.1sin(t)+0.2cos(wt+0)','0.1sin(t)+0.2cos(wt+pi/4)','0.1sin(t)+0.2cos(wt+pi/2)', '0.1sin(t)+0.2cos(wt+3pi/4)', '0.1sin(t)+0.2cos(wt+pi)' );
hold off;

%c);
% Periodic functions looking at the plot with period T = 1/f = 1/2 = 0.5;


%Q2 --------------------------;
%a);
t2 = 0:0.01:10; % 0 ≤ t ≤ 10 
e = exp(-0.1*pi*t2);
plot(t2,e,'r:');

hold on;
x2 = e.*cos(2*pi*t2);
plot(t2, x2)

hold off;
legend('e(t)= exp(-0.1πt)', 'x2(t)= exp(-0.1πt)Cos(2πt)');
xlabel('Time');
ylabel('CT signal x2(t) and the exponential component e(t)');

%b);

t3 = 0:0.01:10; % 0 ≤ t ≤ 10 
u = heaviside(t3-2); % time-shifted unit-step function      
x2b = x2.*u;
plot(t3,x2b);
xlabel('Time');
ylabel('x2b(t) = x2(t)*u(t-2)');


%Q3 ------------------------;
%a;

% zi = 1 - 3j + 70j/(10+7j);
% zi = 4.2886 + 1.6980i;
% polar form of a+jb -> re^j*theta
% a = real(zi) = rx = 4.2886 , b = imag(zi) = ry = 1.6980
% r = sqrt(real(zi)^2 + imag(zi)^2) = 4.6125
% [phase_angle, magnitude] = cart2pol(real(zi), imag(zi))
% phase_angle = theta = 0.3770
% magnitude = r = 4.6125
% Therefore polar form is 4.6125e^(0.377j)

%b;

% sinosoidal function -> x(t) = A sin(2*pi*f*t + theta) , T= 1/f
% Given A = 50, T = 0.2, f = 1/0.2
% Vs = 50*sin(2*pi/0.2);
% = -6.1232e-14
% polar form given Theta = 0, r = magnitude = 50 -> Vs = 50e^(0j) = 50
% 
% V= IZ -> Is = Vs/Zi
% zi = 4.2886 + 1.6980i;
% Is = vs/zi;
% Is = vs/zi =  10.0788 - 3.9905i
% [phase_angle, magnitude] = cart2pol(real(Is), imag(Is))
% phase_angle =
%    -0.3770
% magnitude =
%    10.8401
% Polar form of Is = 10.84e^(-0.377j)

% Plotting
t2 = 0:0.01:0.4;
Vs = 50*sin(2*pi*t2/0.2);
plot(t2,Vs,'r:');

hold on;
Is = 10.84*sin(2*pi*t2/0.2 - 0.377);
plot(t2, Is)

hold off;
legend('Vs', 'Is');
xlabel('Time');
ylabel('Vs and Is signals of the circuit');



%Q4 ------------------------;

%squarewave(f, V, n, t)
squarewave(2,10,150, 0:0.1:10);
squarewave(2,10,150, 0:0.01:5);
%%%%%
% maximum instantaneous power Px(t) = x(t)^2
% its fundamental component -> when k =1



%Q5 ------------------------;

%a;

t5 = -5:0.01:5; %-5 to 5 with a time step of 0.01
f = -3*sign(t5).*exp(1j*2*pi*t5 + 0.25*t5); % sgn() => sign()

realf = real(f); % real component
imagf = imag(f); % imaginary component
subplot(2,1,1); % 2 rows, 1 column, 1st spot
plot(t5,real(f));
xlabel('Time');
ylabel('Real');
title('Real Component of CT signal');

subplot(2,1,2); % 2 rows, 1 column, 2nd spot
plot(t5,imag(f));
xlabel('Time');
ylabel('Imaginary');
title('Imaginary Component of CT signal');


%b;

t5 = -5:0.01:5; %-5 to 5 with a time step of 0.01
f = -3*sign(t5).*exp(1j*2*pi*t5 + 0.25*t5); % sgn() => sign()
%fnew = f.*(-2<t5 & t5<2); % multiply by rectangular pulse signal rect(t/T), where T = 4
fnew = f.*(-2<t5 & t5<2);
% rect(t/T), T=4
% rect(t/4) = f -> |t5| <= T/2 =2 and otherwise 0 -> |t5| > 2

realf = real(fnew);% real component
imagf = imag(fnew);% imaginary component
subplot(2,1,1); % 2 rows, 1 column, 1st spot
plot(t5,real(fnew));
xlabel('Time');
ylabel('Real');
title('Real Component of new CT signal');

subplot(2,1,2); % 2 rows, 1 column, 2nd spot
plot(t5,imag(fnew));
xlabel('Time');
ylabel('Imaginary');
title('Imaginary Component of new CT signal');
clf;

%Q6 ------------------------;
%  ref: https://www.mathworks.com/help/symbolic/piecewise.html
syms x(t)
x(t)=piecewise(-2<=t<0, 0.25*t, 0<=t<0.5, 1.5, 0.5<=t<=2, -t+2); % plotting x(t)
fplot(x(t));

hold on;

fplot(2*x(t+1)); % plotting transformed x(t) into 2*x(t+1)

hold off;

legend('x(t)', '2x(t+1)');
xlabel('Time');
ylabel('x(t) and 2x(t+1)');

%Extra
syms x(t)
x(t)=piecewise(-2<=t<0, 0.25*t, 0<=t<0.5, 1.5, 0.5<=t<=2, -t+2); % plotting x(t)
fplot(x(t));

hold on;

fplot(x(2*t-3)); % plotting transformed x(t) into x(2t-3)

hold off;

legend('x(t)', 'x(2t-3)');
xlabel('Time');
ylabel('x(t) and x(2t-3)');

%Q7 ------------------------;
% 1
n = [0:100];
x = (1-exp(-0.01*n)).*cos(pi*n/10);
subplot(4,2,1);
stem(n,x,'filled'), grid
title('x(n)')
xlabel('n');
ylabel('x(n)');

% 2
n2_1 = [0:100]./2; % x(n/2) 
x2_1 = (1-exp(-0.01*n2_1)).*cos(pi*n2_1/10);
% subplot(4,2,3);
stem(n2_1,x2_1,'filled'), grid
title('x(n/2)');
xlabel('n');
ylabel('x(n/2)');

n2_2 = [0:100].*4; % x(4n) 
x2_2 = (1-exp(-0.01*n2_2)).*cos(pi*n2_2/10);
% subplot(4,2,4);
stem(n2_2,x2_2,'filled'), grid
title('x(4n)')
xlabel('n');
ylabel('x(4n)');

% 3
n3_1 = [0:100]./4; % x(n/4) = y(n) 
y = (1-exp(-0.01*n3_1)).*cos(pi*n3_1/10);
% subplot(4,2,5);
stem(n3_1,y,'filled'), grid
title('x(n/4)')
xlabel('n');
ylabel('x(n/4)');

n3_2 = n3_1.*4; % y(4n)
z = (1-exp(-0.01*n3_2)).*cos(pi*n3_2/10);
% subplot(4,2,6);
stem(n3_2,z,'filled'), grid
title('y(4n)=z(n)')
xlabel('n');
ylabel('z(n)');

% x(n) and z(n) are equal

% 4
n4_1 = [0:100].*4;
y = (1-exp(-0.01*n4_1)).*cos(pi*n4_1/10);
% subplot(4,2,7);
stem(n4_1,y,'filled'), grid
title('x(4n)')
xlabel('n');
ylabel('x(4n)');

n4_2 = n4_1./4;
z = (1-exp(-0.01*n4_2)).*cos(pi*n4_2/10);
% subplot(4,2,8);
stem(n4_2,z,'filled'), grid
title('y(n/4)=z(n)')
xlabel('n');
ylabel('z(n)');

% x(n) and z(n) are equal

% Exercise 1
% b)
syms t
T = 2;
sum = 0;
x = abs(sin(pi*t/T)); 
a0=2/pi; 

for n=1:40 
    an=(2/T).*int(x.*cos(n*t*pi/T),t,0,T); 
    bn=0;    
    sum=sum+(an.*cos(n*t*pi/T)+bn.*sin(n*t*pi/T));  
end 

xt = a0 + sum;
fplot(xt, [-4,4]);
xlabel('Time');
ylabel('x(t)');
title('x(t) that considers the first 40 terms in the Fourier series');


% c)
t = -4:0.01:4;
x = abs(sin(pi*t/T));
test = fft(x);

%exponeentail
subplot(2,1,1); %2 rows, 1 column, 1st spot
stem(t,abs(test))
xlabel('n');
ylabel('x(t)');
title('Magnitude Spectrum');

subplot(2,1,2); %2 rows, 1 column, 1st spot
stem(t,angle(test)*180/pi) %radians 
xlabel('n');
ylabel('x(t)');
title('Phase Spectrum');


% d
x = abs(sin(pi*t/T));
fplot(x, [-10,20]);
xlabel('t');

hold on;

syms y(t)
T = 2;
eqn =  diff(y,t) + 30.5*y == 10.*x;
Dy = diff(y,t);
cond = [y(0)== 5];
f = dsolve(eqn,cond);
fplot(f, [-10,20])
xlabel('t');
ylim([-1 2])

legend('x(t)','y(t)');

hold off;
ylabel('x(t) and y(t)');


% Exercise 2
% a)

t = -10:0.001:10;
xt = 0*t;

for n=-25:25 
    
    if(n==0) % skip the zeroth term
    continue;
    end;

    dn = (1/(2*j*n*pi)) .*  (1- 2*exp(-j*n*pi) + exp(-2*j*n*pi)) ;
    xt = xt + dn .* exp(j*n*pi*t) ;
end 

plot(t, xt);
xlabel('t');
ylabel('x(t)');
title('Exponential Fourier series');

% b

t = -10:0.01:10;
ht = 8* exp(-20*t) .* heaviside(t);
xt = 0*t;

for n=-25:25 
    
    if(n==0) % skip the zeroth term
    continue;
    end;

    dn = (1/(2*j*n*pi)) .*  (1- 2*exp(-j*n*pi) + exp(-2*j*n*pi)) ;
    xt = xt + dn .* exp(j*n*pi*t) ;
end 

plot(t, ht)

hold on;
yt = conv(xt, ht);
plot(t, yt(1:length(t)));

hold on;

plot(t, xt);
xlabel('t');
legend('h2(t)', 'y2(t)', 'x2(t)');
hold off;

% c
t = -10:0.01:10;
ht = 8* exp(-2*t) .* heaviside(t);
xt = 0*t;

for n=-25:25 
    
    if(n==0) % skip the zeroth term
    continue;
    end;

    dn = (1/(2*i*n*pi)) .*  (1- 2*exp(-j*n*pi) + exp(-2*j*n*pi)) ;
    xt = xt + dn .* exp(j*n*pi*t) ;
end 

plot(t, ht)

hold on;
yt = conv(xt, ht);
plot(t, yt(1:length(t)));

hold on;

plot(t, xt);
xlabel('t');
legend('h2(t)', 'y2(t)', 'x2(t)');
hold off;


% extrac 
t = -10:0.01:10;
ht = 8* exp(-0.5*t) .* heaviside(t);
xt = 0*t;

for n=-25:25 
    
    if(n==0) % skip the zeroth term
    continue;
    end;

    dn = (1/(2*i*n*pi)) .*  (1- 2*exp(-j*n*pi) + exp(-2*j*n*pi)) ;
    xt = xt + dn .* exp(j*n*pi*t) ;
end 

plot(t, ht)

hold on;
yt = conv(xt, ht);
plot(t, yt(1:length(t)));

hold on;

plot(t, xt);
xlabel('t');
legend('h2(t)', 'y2(t)', 'x2(t)');
hold off;


% Exercise 3
% a)
clear; % clear the MATLAB environment
num_coeff = [100000000]; % coefficients of the numerator
% in decreasing powers of s
denom_coeff = [1 50000 100000000]; % coefficient of the denominator
% in decreasing powers of s
sys = tf(num_coeff,denom_coeff) ;
% specify the transfer function
bode(sys,{0.01,100000000}); % sketch the Bode plots

%OR

L= 1e-3;
C=10e-6;
R =2;
sys = tf(1, [L*C L/R 1]);
bode(sys);

% b)
num_coeff = [100000000]; % coefficients of the numerator
% in decreasing powers of s
denom_coeff = [1 500 100000000]; % coefficient of the denominator
% in decreasing powers of s
sys = tf(num_coeff,denom_coeff);
% specify the transfer function
bode(sys,{0.01,100000000}); % sketch the Bode plots

% OR

L= 1e-3;
C=10e-6;
R =200;
sys = tf(1, [L*C L/R 1]);
bode(sys);

% c)
% extra c) resuce R value
clear; % clear the MATLAB environment
num_coeff = [100000000]; % coefficients of the numerator
% in decreasing powers of s
denom_coeff = [1 500000 100000000]; % coefficient of the denominator
% in decreasing powers of s
sys = tf(num_coeff,denom_coeff);
% specify the transfer function
bode(sys,{0.01,100000000}); % sketch the Bode plots

% OR

L= 1e-3;
C=10e-6;
R =0.2;
sys = tf(1, [L*C L/R 1]);
bode(sys);
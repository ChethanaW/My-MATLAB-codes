% Exercise 1
% b)
syms n
t = -4:0.01:4;
T = 2;
ao = (1-cos(pi))/pi;
an = (-(n-1) .* cos((n+1)*pi)-(-n-1).* cos((1-n)*pi) - 2)/ (n^2-1)*pi;
bn = (-(n-1) .* sin((n+1)*pi)-(n+1).* sin((1-n)*pi))/ (n^2-1)*pi;
tmp = an.*cos(2*pi*n*t / 3) + bn.*sin(2*pi*n*t /3);
xt = ao + symsum(tmp,n,1,3);
fplot(xt);
 
syms n
t = -4:0.01:4;
T = 2;
x = sin(t*pi/T);
xt = 2 + symsum(tmp,n,1,2);
plot(t,xt);
 
syms t
t = -4:0.01:4; % define time instants
T = 2;
sum = 0;
x = sin(pi*t/T); % samples of cosine wave
a0=(1/pi)*int(x,t,0,T); 

for n=1:1 
        %finding the coefficients 
    an=(2/T).*int(x.*cos(n*t*pi/T),t,0,T); 
    bn=(2/T).*int(x.*sin(n*t*pi/T),t,0,T);    
    sum=sum+(an.*cos(n*t*pi/T)+bn.*sin(n*t*pi/T));  
end 

t = -4:0.01:4;
xt = a0 + sum;
plot(t, xt);

syms t
xt = a0 + sum;

tmp = sin((pi*t)/2) + 5734161139222659/(4503599627370496*pi);
plot(t, xt);

h = sin(t);
ezplot(t,x,[0,T]); 


test = fft(x);
plot(t,x)
stem(t,x)

y = fft(x); % fft computes CTFT
subplot(223); plot(abs(y)); % abs calculates magnitude




% % % % % % 
% Exercise 1
% b)

syms t
T = 2;
sum = 0;
x = abs(sin(pi*t/T)); % samples of cosine wave
a0=(1/T)*int(x,t,0,T); 

for n=1:40 
        %finding the coefficients 
    an=(2/T).*int(x.*cos(n*t*pi/T),t,0,T); 
    bn=(2/T).*int(x.*sin(n*t*pi/T),t,0,T);    
    sum=sum+(an.*cos(n*t*pi/T)+bn.*sin(n*t*pi/T));  
end 

xt = a0 + sum;
fplot(xt, [-4,4]);
xlabel('Time');
ylabel('x(t)');
title('x(t) that considers the first 40 terms in the Fourier series');

% c)
t = -4:0.01:4;
x = sin(pi*t/T);
test = fft(x);
%plot(t,test)
%exponeentail
subplot(2,1,1); %2 rows, 1 column, 1st spot
stem(t,abs(test))
xlabel('n');
ylabel('x(t)');
title('Magnitude Spectrum');

subplot(2,1,2); %2 rows, 1 column, 1st spot
stem(t,angle(test)) %radians ?????
xlabel('n');
ylabel('x(t)');
title('Phase Spectrum');

% 
% syms t
% T = 2;
% sum = 0;
% x = abs(sin(pi*t/T)); % samples of cosine wave
% a0=(1/T)*int(x,t,0,T); 
% 
% for n=-10:10 
%         %finding the coefficients 
%     an=(2/T).*int(x.*cos(n*t*pi/T),t,0,T); 
%     bn=(2/T).*int(x.*sin(n*t*pi/T),t,0,T);    
%     sum=sum+(an.*cos(n*t*pi/T)+bn.*sin(n*t*pi/T));  
% end 
% 
% xt = a0 + sum;
% fplot(abs(xt), [-4,4]);
% step(xt)

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

t = -10:0.01:10;
xt = 0*t;

for n=-25:25 
    
    if(n==0) % skip the zeroth term
    continue;
    end;

    dn = (1/(2*i*n*pi)) .*  (1- 2*exp(-j*n*pi) + exp(-2*j*n*pi)) ;
    xt = xt + dn .* exp(j*n*pi*t) ;
end 

plot(t, xt);
xlabel('t');
ylabel('x(t)');
title('Exponential Fourier series');

% b
% t = -5:0.01:5;
% % HW = 8 ./(20 + j*t);
% % ht = ifft(HW);
% ht = 8* exp(-20*t) .* heaviside(t);
% xt = xt;
% 
% yt = conv(xt, ht);
% plot(yt);

t = -5:0.01:5;
ht = 8* exp(-20*t) .* heaviside(t);
xt = 0;
for n=-25:25 
    if(n==0) % skip the zeroth term
    continue;
    end;
    xt = xt + (4/pi*n) .* sin(n*pi*t) ;
end 

yt = conv(xt, ht);
plot(yt);

hold on;

plot(xt);
xlabel('t');
legend('y2(t)', 'x2(t)');
hold off;

% c

t = -5:0.01:5;
ht = 8* exp(-0.5*t) .* heaviside(t);
xt = 0;
for n=-25:25 
    if(n==0) % skip the zeroth term
    continue;
    end;
    xt = xt + (4/pi*n) .* sin(n*pi*t) ;
end 

yt = conv(xt, ht);
plot(yt);

hold on;

plot(xt);
xlabel('t');
legend('y2(t)', 'x2(t)');
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

% b) increase R value
clear; % clear the MATLAB environment
num_coeff = [100000000]; % coefficients of the numerator
% in decreasing powers of s
denom_coeff = [1 500 100000000]; % coefficient of the denominator
% in decreasing powers of s
sys = tf(num_coeff,denom_coeff);
% specify the transfer function
bode(sys,{0.01,100000000}); % sketch the Bode plots

% extra c) resuce R value
clear; % clear the MATLAB environment
num_coeff = [100000000]; % coefficients of the numerator
% in decreasing powers of s
denom_coeff = [1 500000 100000000]; % coefficient of the denominator
% in decreasing powers of s
sys = tf(num_coeff,denom_coeff);
% specify the transfer function
bode(sys,{0.01,100000000}); % sketch the Bode plots




% exer2 b)
t = -10:0.01:10;
ht = 8* exp(-20*t) .* heaviside(t);
xt = 0*t;

for n=-25:25 
    if n >0
        dn = (1/(2*i*n*pi)) .*  (1- 2*exp(-j*n*pi) + exp(-2*j*n*pi)) ;
        xt = xt + dn .* exp(j*n*pi*t) ;
    elseif n <0
        dn = (1/(2*i*(-n)*pi)) .*  (1- 2*exp(-j*n*pi) + exp(-2*j*n*pi)) ;
        xt = xt + dn .* exp(j*n*pi*t) ;
    end
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

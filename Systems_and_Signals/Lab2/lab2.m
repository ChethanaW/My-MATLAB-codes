%Exercise I
%a)
t = -5:0.01:5;
m = 3 * cos(2 *pi*t) ;
t2 = -1:0.001:1;
s = 10* (1 + 0.6 * cos(2 *pi*t2) ) .* cos(40*pi*t2); %k =0.2

subplot(3,1,1); % 3 rows, 1 column, 1st spot
plot(t,m);
xlabel('Time');
ylabel('m(t)');
title('Baseband signal');

subplot(3,1,2); % 3 rows, 1 column, 2nd spot
plot(t2,s);
xlabel('Time');
ylabel('s(t)');
title('Amplitude Modulated Signal with K = 0.2');

%b)
s = 10* (1 + 0.3 * cos(2 *pi*t2) ) .* cos(40*pi*t2); %k =0.1

subplot(3,1,3); % 3 rows, 1 column, 3rd spot
plot(t2,s);
xlabel('Time');
ylabel('s(t)');
title('Amplitude Modulated Signal with K = 0.1');


% extra

t = -5:0.01:5;
m = 3 * cos(2 *pi*t) ;
t2 = -1:0.001:1;
s = 10* (1 + 0.6 * cos(2 *pi*t2) ) .* cos(40*pi*t2); %k =0.2
s2 = 10* (1 + 0.3 * cos(2 *pi*t2) ) .* cos(40*pi*t2); %k =0.1
s3 = 10* (1 + 3 * cos(2 *pi*t2) ) .* cos(40*pi*t2); %k =1
s4 = 10* (1 + 9 * cos(2 *pi*t2) ) .* cos(40*pi*t2); %k =3
s5 = 10* (1 + cos(2 *pi*t2) ) .* cos(40*pi*t2); %k =1/3

subplot(5,1,1); % 5 rows, 1 column, 1st spot
plot(t2,s5);
xlabel('Time');
ylabel('s(t)');
title('Amplitude Modulated Signal with K = -1');

subplot(5,1,3); % 5 rows, 1 column, 3rd spot
plot(t2,s);
xlabel('Time');
ylabel('s(t)');
title('Amplitude Modulated Signal with K = 0.2');

subplot(5,1,2); % 5 rows, 1 column, 2nd spot
plot(t2,s2);
xlabel('Time');
ylabel('s(t)');
title('Amplitude Modulated Signal with K = 0.1');

subplot(5,1,4); % 5 rows, 1 column, 4th spot
plot(t2,s3);
xlabel('Time');
ylabel('s(t)');
title('Amplitude Modulated Signal with K = 1');

subplot(5,1,5); % 5 rows, 1 column, 5th spot
plot(t2,s4);
xlabel('Time');
ylabel('s(t)');
title('Amplitude Modulated Signal with K = 3');

% Exercise 2
% 2i)
syms y(t) x
eqn =  diff(y,t) +y == 0;
Dy = diff(y,t);
cond = [y(0)== 5];
f = dsolve(eqn,cond);
fplot(f, [0,5])
xlabel('Time');
ylabel('Yzi');
title('Zero Input Response');

% 2ii)
syms y(t) x
eqn =  diff(y,t) +y == 0.5.*heaviside(t);
Dy = diff(y,t);
cond = [y(0)== 5];
f = dsolve(eqn,cond);
fplot(f, [0, 5])
xlabel('Time');
ylabel('Y(t)');
title('Total Output Response');

Reference
% https://www.chegg.com/homework-help/questions-and-answers/consider-cr-circuit-network-fig-2-1-determine-differential-equation-relating-x-t-y-t-c-02f-q68256156
% https://www.dummies.com/education/science/science-electronics/analyze-a-series-rc-circuit-using-a-differential-equation/


% Exercise 3

% https://www.chegg.com/homework-help/questions-and-answers/t-uc-figure-2-rlc-circuit-task-c-modeling-rlc-circuit-differential-equations-describing-dy-q28034828
% 2i)
syms y(t) x
eqn =  diff(y,t,2) + 2*diff(y,t) + y == 0;
Dy = diff(y,t);
cond = [y(0)== 1, Dy(0) == 8];
f = dsolve(eqn,cond);
fplot(f, [0,50])
xlabel('Time');
ylabel('Yzi');
title('Zero Input Response');

% 2ii)
syms y(t) x
eqn =  diff(y,t,2) + 2*diff(y,t) + y(t)   == 2*sin(0.1*pi*t);
Dy = diff(y,t);
cond = [y(0)== 1, Dy(0) == 8];
f = dsolve(eqn,cond);
fplot(f, [0, 50])
xlabel('Time');
ylabel('Y(t)');
title('Total Output Response with x(t) = 2sin(0.1πt) ');

% 2iii)
syms y(t) x
eqn =  diff(y,t,2) + 2*diff(y,t) + y(t)   == 2*sin(2*pi*t);
Dy = diff(y,t);
cond = [y(0)== 1, Dy(0) == 8];
f = dsolve(eqn,cond);
fplot(f, [0, 50])
xlabel('Time');
ylabel('Y(t)');
title('Total Output Response with x(t) = 2sin(2 πt) ');
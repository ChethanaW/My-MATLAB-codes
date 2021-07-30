% lab Exercise 1
% Q1
%%%%%%%%%%%%%%%%%%%%%%%% Butterfly
Wp =10;
Ws =20;
Pb = 0.9; %Passband
Sb = 0.15; %Stopband
Rp = -20*log10(Pb);
Rs = -20*log10(Sb);

[N,Wc]= buttord(Wp,Ws,Rp,Rs, 's')
[num,den]=butter(N,Wc,'s')
Ht=tf(num,den)
[H,w]=freqs(num,den); 

% plot magnitude response  
plot(w, abs(H));
xline(Wp,'--k',sprintf('Wp=%0.2f', Wp))
xline(Ws,'--k',sprintf('Ws=%0.2f', Ws))
yline(Pb,'--k',sprintf('delta_p=%0.2f', Pb))
yline(Sb,'--k',sprintf('delta_s=%0.2f', Sb))
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB)');

% Bode plot
bode(Ht);


%%%%%%%%%%%%%%%%%%%%%%%%  Type II Chebyshev
Wp =10;
Ws =20;
Pb = 0.9; %Passband
Sb = 0.15; %Stopband
Rp = -20*log10(Pb);
Rs = -20*log10(Sb);

[N,Wn]= cheb2ord(Wp,Ws,Rp,Rs, 's')
[num,den]=cheby2(N,Rs,Wn,'s')
Ht=tf(num,den)
[H,w]=freqs(num,den); 

% plot magnitude response  
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB)');
xline(Wp,'--k',sprintf('Wp=%0.2f', Wp))
xline(Ws,'--k',sprintf('Ws=%0.2f', Ws))
yline(Pb,'--k',sprintf('delta_p=%0.2f', Pb))
yline(Sb,'--k',sprintf('delta_s=%0.2f', Sb))

% Bode plot
bode(Ht);


% compare plot
Wp =10;
Ws =20;
Pb = 0.9; %Passband
Sb = 0.15; %Stopband
Rp = -20*log10(Pb);
Rs = -20*log10(Sb);

[N,Wc]= buttord(Wp,Ws,Rp,Rs, 's')
[num,den]=butter(N,Wc,'s')
Ht=tf(num,den)
[H,w]=freqs(num,den); 

subplot(2,1,1); % 2 rows, 1 column, 1st spot
% plot magnitude response  
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB) using Butterworth');

[N,Wn]= cheb2ord(Wp,Ws,Rp,Rs, 's')
[num,den]=cheby2(N,Rs,Wn,'s')
Ht=tf(num,den)
[H,w]=freqs(num,den); 

subplot(2,1,2); % 2 rows, 1 column, 1st spot
% plot magnitude response  
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB) using Type II Chebyshev');



%--------------------------- Q2------------------------------
% Type I Chebyshev 
Wp =15;
Ws =20;
Pb = 0.9; %Passband
Sb = 0.15; %Stopband
Rp = -20*log10(Pb);
Rs = -20*log10(Sb);

[N,Wn]= cheb1ord(Wp,Ws,Rp,Rs, 's');
[num,den]=cheby1(N,Rp,Wn,'s');
Ht=tf(num,den)
[H,w]=freqs(num,den); 

% plot magnitude response  
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB)');
xline(Wp,'--k',sprintf('Wp=%0.2f', Wp))
xline(Ws,'--k',sprintf('Ws=%0.2f', Ws))
yline(Pb,'--k',sprintf('delta_p=%0.2f', Pb))
yline(Sb,'--k',sprintf('delta_s=%0.2f', Sb))

% Bode plot
bode(Ht);


%%%% Elliptic
Wp =15;
Ws =20;
Pb = 0.9; %Passband
Sb = 0.15; %Stopband
Rp = -20*log10(Pb);
Rs = -20*log10(Sb);

[N,Wn]= ellipord(Wp,Ws,Rp,Rs, 's')
[num,den]=ellip(N,Rp,Rs,Wn,'s')
Ht=tf(num,den)
[H,w]=freqs(num,den); 

% plot magnitude response  
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB)');
xline(Wp,'--k',sprintf('Wp=%0.2f', Wp))
xline(Ws,'--k',sprintf('Ws=%0.2f', Ws))
yline(Pb,'--k',sprintf('delta_p=%0.2f', Pb))
yline(Sb,'--k',sprintf('delta_s=%0.2f', Sb))

% Bode plot
bode(Ht);


% compare plot
Wp =15;
Ws =20;
Pb = 0.9; %Passband
Sb = 0.15; %Stopband
Rp = -20*log10(Pb);
Rs = -20*log10(Sb);

[N,Wn]= cheb1ord(Wp,Ws,Rp,Rs, 's');
[num,den]=cheby1(N,Rp,Wn,'s');
Ht=tf(num,den)
[H,w]=freqs(num,den); 

subplot(2,1,1); % 2 rows, 1 column, 1st spot
% plot magnitude response  
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB) using  Type I Chebyshev');

[N,Wn]= ellipord(Wp,Ws,Rp,Rs, 's')
[num,den]=ellip(N,Rp,Rs,Wn,'s')
Ht=tf(num,den)
[H,w]=freqs(num,den); 

subplot(2,1,2); % 2 rows, 1 column, 1st spot
% plot magnitude response  
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Magnitude Repsonse (dB) using Elliptic');


% Exercise 2
 % Elliptic filter

% high pass
wp=1; ws=0.1; Rp=-20*log(0.9); Rs=20;
[N,Hwn] = ellipord(wp,ws,Rp,Rs,'s') ;
[num4,den4] = ellip(N,Rp,Rs,Hwn,'high','s') ;
H4 = tf(num4,den4);
[H,w]=freqs(num4,den4); 
% subplot(3,1,1); % 3 rows, 1 column, 1st spot
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('High pass');

% low pass
wp=10; ws=60; Rp=-20*log(0.9); Rs=40;
[N,Lwn] = ellipord(wp,ws,Rp,Rs,'s') ;
[num4,den4] = ellip(N,Rp,Rs,Lwn,'s') ;
H4 = tf(num4,den4);
[H,w]=freqs(num4,den4); 
% subplot(3,1,2); % 3 rows, 1 column, 2nd spot
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Low pass');

[num,den] = ellip(N,Rp,Rs,[Hwn Lwn],'s') ;
H = tf(num,den);
[PH,w]=freqs(num,den); 
% subplot(3,1,3); % 3 rows, 1 column, 3rd spot
plot(w, abs(PH));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Band pass');
xline(1,'--k','Wp1=1')
xline(10,'--k','Wp2=10')
xline(0.1,'--k','Ws1=0.1')
xline(60,'--k','Ws2=60')
yline(0.9,'--k','Pb=0.9')
yline(0.1,'--k','Sb1=0.1')
yline(0.01,'--k','Sb2=0.01')

%%%%% %butterworth

% high pass
wp=1; ws=0.1; Rp=-20*log(0.9); Rs=20;
[N, Hwc] = buttord(wp,ws,Rp,Rs,'s');
[num1,den1] = butter(N,Hwc,'high','s');
H4 = tf(num1,den1);
[H,w]=freqs(num1,den1); 
% subplot(3,1,1); % 3 rows, 1 column, 1st spot
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('High pass');


% low pass
wp=10; ws=60; Rp=-20*log(0.9); Rs=40;
[N, Lwc] = buttord(wp,ws,Rp,Rs,'s');
[num1,den1] = butter(N,Lwc,'s');
H4 = tf(num1,den1);
[H,w]=freqs(num1,den1); 
% subplot(3,1,2); % 3 rows, 1 column, 2nd spot
plot(w, abs(H));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Low pass');

[num,den] = butter(N,[Hwc Lwc],'s') ;
H = tf(num,den);
[PH,w]=freqs(num,den); 
% subplot(3,1,3); % 3 rows, 1 column, 3rd spot
plot(w, abs(PH));
xlabel('Frequency-w');
ylabel('Magnitude (dB)');
title('Band pass');
xline(1,'--k','Wp1=1')
xline(10,'--k','Wp2=10')
xline(0.1,'--k','Ws1=0.1')
xline(60,'--k','Ws2=60')
yline(0.9,'--k','Pb=0.9')
yline(0.1,'--k','Sb1=0.1')
yline(0.01,'--k','Sb2=0.01')

% bode
bode(H);


% tried
wp=[1 10]; ws=[0.1 60]; Rp=-20*log(0.9);Rs=40;
[N,wn] = ellipord(wp,ws,Rp,Rs,'s');
[num4,den4] = ellip(N,Rp,Rs,wn,'s');
H4 = tf(num4,den4);
[PH,w]=freqs(num,den); 
plot(w, abs(PH));
yline(0.1,'--k','Sb1=0.1')
yline(0.01,'--k','Sb2=0.01')
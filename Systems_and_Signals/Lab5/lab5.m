% Q1
a=0:(1/8000):2;
f=150*a;
x=sin(2*pi*f.*a);
subplot(2,1,1), plot(a,f)
subplot(2,1,2), plot(a,x)
audiowrite('sound1.wav',x,8000);
sound(x,8000);

% Q2
a=0:(1/8000):2;
f=150*a;
x=sin(2*pi*f.*a);
subplot(2,1,1), plot(a,f)
subplot(2,1,2), plot(a,x)

t=0:(1/8000):0.5;
    
v = [sin(262*2*pi*t), sin(294*2*pi*t)];
audiowrite('sound2.wav',v,8000);
sound(v,8000);


% sound c for 2secs
% ref:< http://www.csun.edu/~hcmth017/notes/node11.html
% % t=linspace(0,2,20000);
% % y=sin(262*2*pi*t);
% % sound(y,10000);
% % yy=sin(294*2*pi*t);
% % sound(yy,10000);
% % audiowrite('soundc.wav',y,8000);


% % freq = [262 294 330 349 392 440 494 523];
% % 
% % for kk = 1:length(freq)
% %     curfreq = freq(kk);
% %     disp(curfreq)
% %     t=linspace(0,2,20000);
% %     y=sin(curfreq*2*pi*t);
% %     sound(y,10000);
% %     pause(0.5);
% % end
fs = 16000; % for 4000, 8000, 16000 sound same because sound is not distortaed
freq = [262 294 330 349 392 440 494 523];
for kk = 1:length(freq)
    curfreq = freq(kk);
    disp(curfreq)
    t=0:(1/fs):0.5;
    y=sin(curfreq*2*pi*t);
    sound(y,fs);
    pause(0.5);
end

% q2 1
t=0:(1/8000):0.5;
myVector = [sin(262*2*pi*t) sin(294*2*pi*t) sin(330*2*pi*t) sin(349*2*pi*t) sin(392*2*pi*t) sin(440*2*pi*t) sin(494*2*pi*t) sin(523*2*pi*t)];
audiowrite('Cscale.wav',myVector,8000);
sound(myVector,8000);

%q2 2 hears fone as expected

% q2 3
[y,fs]=audioread('Cscale.wav');
sound(y,fs);
sound(y,4000);% sound low pitch and slower rate than fs=8000 bcs it collects less samples per sec
sound(y,16000); % sound high pitch and faster rate than fs=8000 bcs it collects more samples per sec

% other way to do it
t=0:(1/4000):0.5;
myVector = [sin(262*2*pi*t) sin(294*2*pi*t) sin(330*2*pi*t) sin(349*2*pi*t) sin(392*2*pi*t) sin(440*2*pi*t) sin(494*2*pi*t) sin(523*2*pi*t)];
% audiowrite('Cscale.wav',myVector,8000);
sound(myVector,4000); % sound low pitch and slower rate than fs=8000 bcs it collects less samples per sec

t=0:(1/16000):0.5;
myVector = [sin(262*2*pi*t) sin(294*2*pi*t) sin(330*2*pi*t) sin(349*2*pi*t) sin(392*2*pi*t) sin(440*2*pi*t) sin(494*2*pi*t) sin(523*2*pi*t)];
% audiowrite('Cscale.wav',myVector,8000);
sound(myVector,16000); % sound high pitch and faster rate than fs=8000 bcs it collects more samples per sec

% if change both t interval 1/fs and sound to play given fs ..sound will remain the same.

% ref https://sites.google.com/site/ecte906ofzkk/lab-exercises/lab-05
% % keys = [40 42 44 45 47 49 51 52];
% % freq = [262 294 330 349 392 440 494 523];
% % dur = 0.25*ones(1,length(keys));
% % fs = 11025;
% % xx = zeros(1,sum(dur)*fs+1);
% % n1 = 1;
% % for kk = 1:length(keys)
% %     keynum = keys(kk);
% %     dur1 = dur(kk);
% %     tone = key2note(xx,keynum,dur1);
% %     n2 = n1+length(tone)-1;
% %     xx(n1:n2) = xx(n1:n2)+tone;
% %     n1=n2;
% % end
% % 
% % audiowrite('sound2.wav',xx,8000);
% % soundsc(xx,fs);

% q2 4)
[y,fs]=audioread('Cscale.wav');
z = zeros(1,length(y));
z = flipud(y)
audiowrite('CscaleZ.wav',z,fs);

% reverse scale C B A G F E D C from high to low frequncy sound

% for k = 1: length(y)
%    Z(k)=y(-k) 
% end

% Q3
% ref : https://www.mathworks.com/help/matlab/ref/audiowrite.html

% q3 1

t=0:(1/8000):5;
f=262;
xk=sin(2*pi*f*t);
audiowrite('Cmajor1.wav',xk,8000);
sound(xk,8000);

fftxk = fft(xk);

% plot the magnitude response
stem(t,abs(fftxk))
xlabel('k');
ylabel('FFT of x(k)');
title('Magnitude Spectrum');
yline(262,'--k','Frequency of C major ~ 262')

t=0:(1/8000):5;
f=262;
xk=sin(2*pi*f.*t);
fftxk = fft(xk);

% plot the magnitude response
plot(t,abs(fftxk))
yline(262,'--k','262')

% q3 2
[y,fs]=audioread('Cmajor1.wav');
audioinfo('Cmajor1.wav')

% Y is single or double because they are normalized and in the range of -1 and 1
% proof by 
plot(y)
ylabel('range of y -1 to 1');


% q3 3
t=0:(1/8000):2;
f=262;
xk=20*sin(2*pi*f.*t);
subplot(2,1,1), plot(t,f)
subplot(2,1,2), plot(t,xk)
audiowrite('Cmajor2.wav',xk,8000);

% % yes warning
% Warning: Data clipped when writing file. 
% > In audiowrite>clipInputData (line 470)
% In audiowrite (line 241) 


% q3 4
[cy1,fs1]=audioread('Cmajor1.wav');
[cy2,fs2]=audioread('Cmajor2.wav');

sound(cy1,fs1);
sound(cy2,fs2);

t=0:(1/8000):2;
subplot(2,1,1), plot(t,20*sin(2*pi*f.*t))
xlabel('t');
ylabel('cy2');
title('CY2 with peak magnitude of 20');
subplot(2,1,2), plot(t,sin(2*pi*f.*t))
xlabel('t');
ylabel('cy1');
title('CY1 with peak magnitude of 1');
%-----------
t=0:(1/8000):2;
subplot(2,1,1), plot(cy1)
xlabel('t');
ylabel('cy1');
title('CY1 with peak magnitude of 1');
subplot(2,1,2), plot(cy2)
xlabel('t');
ylabel('cy2');
title('CY2 with peak magnitude of 20');
%-----------
% different sounds
% in cy2 all the values greater than 1 and less than -1 is cut and that
% explained the warning given when saving into a wav file

% q3 5

subplot(2,1,1),plot(abs(fft(cy1)))
xlabel('k');
ylabel('FFT of CY1');
title('Magnitude Response of CY1');

subplot(2,1,2),plot(abs(fft(cy2)))
xlabel('k');
ylabel('FFT of CY2');
title('Magnitude Response of CY2');

% % cy2 has multiple small spikes between 

% q3 6
[y,fs]=audioread('sound1.wav');
audiowrite('sound2.wav',20*y,fs);

% % yes warning
% Warning: Data clipped when writing file. 
% > In audiowrite>clipInputData (line 470)
% In audiowrite (line 241) 

[y2,fs2]=audioread('sound2.wav');
sound(y,fs);
sound(y2,fs2);

% dont sound the same sound2 seems to have a wavy effect at the end, where sound1 is smooth

subplot(2,1,1),plot(y)
xlabel('k');
ylabel('y');
title('Magnitude Response of sound1');
subplot(2,1,2),plot(y2)
xlabel('k');
ylabel('y2');
title('Magnitude Response of sound2');
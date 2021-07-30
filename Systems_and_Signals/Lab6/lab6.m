%% Q1
% x(k) = {2,1,1,0,1)

N=5; k = 0:N-1;
xk= [2 1 1 0 1];

% a)
% X(r)
Xr = fftshift(fft(xk));
w = -pi:2*pi/N:pi-2*pi/N;
subplot(2,1,1),stem(w, Xr);
xlabel('r');
ylabel('X[r]');
title('X[r]');
% X*[M-r] conjucate of complex x+yj -> x-yj and vise versa
cXr = conj(Xr);
subplot(2,1,2),stem(w, cXr);
xlabel('r');
ylabel('X*[M-r]');
title('X*[M-r]');
%they are the same

% Shifted for better observation purpose
Xr = fftshift(fft(xk));
w = -pi:2*pi/N:pi-2*pi/N;
subplot(2,1,1),stem(w, Xr);
xlabel('r');
ylabel('X[r]');
title('X[r]');
% X*[M-r] conjucate of complex x+yj -> x-yj and vise versa
cXr = conj(Xr);
subplot(2,1,2),stem(w, cXr);
xlabel('r');
ylabel('X*[M-r]');
title('X*[M-r]');
%they are the same

%%  b)
subplot(2,1,1),stem(w, abs(Xr));
xlabel('r');
ylabel('|X[r]|');
title('|X[r]|');
%stem(w, abs(fftshift(xk)))
subplot(2,1,2),stem(w, abs(cXr));
xlabel('r');
ylabel('|X[M-r]|');
title('|X[M-r]|');
%they are the same

%% c)
subplot(2,1,1),stem(w, angle(Xr));
xlabel('r');
ylabel('<X[r]');
title('<X[r]');
subplot(2,1,2),stem(w, -angle(cXr));
xlabel('r');
ylabel('-<X[M-r]');
title('-<X[M-r]');
%they are the same

%% Q2

N1=7; k1=0:N1-1;
x1k = [2 1 0 0 0 0 1];
X1r = fft(x1k);
X1r = fftshift(X1r);
w1 = -pi:2*pi/N1:pi-2*pi/N1;
subplot(3,1,1),stem(w1, X1r);
xlabel('r');
ylabel('X1[r]');
title('X1[r]');

N2=5; k2=0:N2-1;
x2k = [5 1 1 1 1];
X2r = fft(x2k);
X2r = fftshift(X2r);
w2 = -pi:2*pi/N2:pi-2*pi/N2;
subplot(3,1,2),stem(w2, X2r);
xlabel('r');
ylabel('X2[r]');
title('X2[r]');

N3=6; k3=0:N3-1;
x3k = [1 3 3 0 3 3];
X3r = fft(x3k);
X3r = fftshift(X3r);
w3 = -pi:2*pi/N3:pi-2*pi/N3;
subplot(3,1,3),stem(w3, X3r);
xlabel('r');
ylabel('X3[r]');
title('X3[r]');


%% testing
N3=6; k3=0:N3-1;
x3k = [1 3 3 0 3 3];
subplot(2,1,1),stem(x3k);
X3r = fft(x3k, 16);
X3r = fftshift(X3r);
nlen= length(X3r);
w3 = -pi:2*pi/N3:pi-2*pi/N3;
subplot(2,1,2),stem(X3r);

N = 10; k = 0:N-1; % set length of DT sequence to N = 10
x = 0.6.*k; % compute the DT sequence
X = fft(x); % determine the 201-point DFT
X = fftshift(X); % shift the DFT coefficients
w = -pi:2*pi/N:pi-2*pi/N; % compute DTFT frequencies
stem(w, X);
%%
%ii

N1=7; k1=0:N1-1;
x1k = [2 1 0 0 0 0 1];
X1r = fft(x1k, 16);
X1r = fftshift(X1r);
w1 = -pi:2*pi/N1:pi-2*pi/N1;
subplot(3,1,1),stem(X1r);
xlabel('r');
ylabel('X1[r]');
title('X1[r]');

N2=5; k2=0:N2-1;
x2k = [5 1 1 1 1];
X2r = fft(x2k,16);
X2r = fftshift(X2r);
w2 = -pi:2*pi/N2:pi-2*pi/N2;
subplot(3,1,2),stem(X2r);
xlabel('r');
ylabel('X2[r]');
title('X2[r]');

N3=6; k3=0:N3-1;
x3k = [1 3 3 0 3 3];
X3r = fft(x3k,16);
X3r = fftshift(X3r);
w3 = -pi:2*pi/N3:pi-2*pi/N3;
subplot(3,1,3),stem(X3r);
xlabel('r');
ylabel('X3[r]');
title('X3[r]');


%% Q3
%% 1)
[cy1,fs1]=audioread('CScale.wav');
[cy2,fs2]=audioread('CScaleZ.wav');
subplot(2,1,1),plot(abs(fftshift(fft(cy1))));
xlabel('t');
ylabel('fft');
title('DFT of Cscale');
subplot(2,1,2),plot(abs(fftshift(fft(cy2))));
xlabel('t');
ylabel('fft');
title('DFT of CscaleZ');

% no,they look the same

[cy,fs]=audioread('Cmajor1.wav');
plot(abs(fftshift(fft(cy))));
y = fft(cy1);
nlen=length(y);
f=(0:1/nlen:1-1/nlen)*fs1; 
plot(f,y);

%% 2
%for Cscale
plot(abs(fftshift(fft(cy1))));
xlabel('t');
ylabel('fft');
title('DFT of Cscale');


%%3
x1 = cy1(1:4000);
x2 = cy1(4001:8000);
x3 = cy1(8001:12000);
x4 = cy1(12001:16000);
x5 = cy1(16001:20000);
x6 = cy1(20001:24000);
x7 = cy1(24001:28000);
x8 = cy1(28001:32000);
subplot(4,2,1),plot(abs(fft(x1)))
title('x1');
subplot(4,2,2),plot(abs(fft(x2)))
title('x2');
subplot(4,2,3),plot(abs(fft(x3)))
title('x3');
subplot(4,2,4),plot(abs(fft(x4)))
title('x4');
subplot(4,2,5),plot(abs(fft(x5)))
title('x5');
subplot(4,2,6),plot(abs(fft(x6)))
title('x6');
subplot(4,2,7),plot(abs(fft(x7)))
title('x7');
subplot(4,2,8),plot(abs(fft(x8)))
title('x8');

%%4
names = {'x1fft' 'x2fft' 'x3fft' 'x3fft' 'x3fft' 'x3fft' 'x3fft' 'x3fft'};
for index = 1 : length(names)
    s.(names{index}) = fft(cy1((index-1)*4000+1:index*4000), 4000);  % Assign index to s.fred, s.sam, and s.al
end

%%5
for i=1:8 
     xfft = cy1((i-1)*4000+1:i*4000);
     xfft = fftshift(fft(xfft, 4000));
     spect(:,i) =xfft;
end 

window_length = 4000;

spect_mag=20*log10(abs(spect));
plot(spect_mag)
t=(0:window_length:(length(cy1)-window_length))/fs1;
f=(1:window_length)*fs1/window_length;
imagesc(t, f, spect_mag);
axis xy
colormap(jet)
colorbar

%for CscaleZ %%%%%%%%%%%
%2
plot(abs(fftshift(fft(cy2))));
xlabel('t');
ylabel('fft');
title('DFT of Cscale');


%%3
x1 = cy2(1:4000);
x2 = cy2(4001:8000);
x3 = cy2(8001:12000);
x4 = cy2(12001:16000);
x5 = cy2(16001:20000);
x6 = cy2(20001:24000);
x7 = cy2(24001:28000);
x8 = cy2(28001:32000);
subplot(4,2,1),plot(abs(fft(x1)))
title('x1');
subplot(4,2,2),plot(abs(fft(x2)))
title('x2');
subplot(4,2,3),plot(abs(fft(x3)))
title('x3');
subplot(4,2,4),plot(abs(fft(x4)))
title('x4');
subplot(4,2,5),plot(abs(fft(x5)))
title('x5');
subplot(4,2,6),plot(abs(fft(x6)))
title('x6');
subplot(4,2,7),plot(abs(fft(x7)))
title('x7');
subplot(4,2,8),plot(abs(fft(x8)))
title('x8');

%%4
names = {'x1fft' 'x2fft' 'x3fft' 'x3fft' 'x3fft' 'x3fft' 'x3fft' 'x3fft'};
for index = 1 : length(names)
    s.(names{index}) = fft(cy2((index-1)*4000+1:index*4000), 4000);  % Assign index to s.fred, s.sam, and s.al
end

%%5
for i=1:8 
     xfft = cy2((i-1)*4000+1:i*4000);
     xfft = fftshift(fft(xfft));
     spect(:,i) =xfft;
end 

window_length = 4000;

spect_mag=20*log10(abs(spect));
plot(spect_mag)
t=(0:window_length:(length(cy2)-window_length))/fs2;
f=(1:window_length)*fs2/window_length;
imagesc(t, f, spect_mag);
axis xy
colormap(jet)
colorbar

%% Q4
subplot(2,1,1),spectrogram(cy1, [], fs1, 'yaxis'), title('spectrogram of Cscale.wav');
subplot(2,1,2),spectrogram(cy2, [], fs2, 'yaxis'), title('spectrogram of CscaleZ.wav');
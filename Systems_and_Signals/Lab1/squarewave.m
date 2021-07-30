function [out, power] = squarewave(f, V, n, t)

% Frequency[f], Amplitude[v], Number of Terms[n], Time Array[t] 
max_array = 1:n*2; %1:double the number required(because we only need odd #s)
odd_terms =  max_array(rem(max_array,2)==1); % getting n odd numbers
out = zeros(1,length(t)); % empty array of all zeros

for i=1:length(odd_terms) % summation of all the terms
        tmp= 1/odd_terms(i) * sin(odd_terms(i)*2*pi*f*t);   % a term of a n at a time
        out=out+tmp;                         % adding terms
end

%e= sin(1*2*pi*f.*t);
out = out*4*V/pi; % complete xsq(t) function
    
plot(t,out);

hold on;

fundamental = 4*V/pi * 1/1 * sin(1*2*pi*f*t); % Fundamental component n =1 of xsq(t)

plot(t,fundamental);

% maximum instantaneous power of the fundamental component of xsq(t)
fundamental_power = fundamental.^2;
power = fundamental_power;

fprintf('maximum instantaneous power of the fundamental component of xsq(t) is %s.\n',max(power));

plot(t, power);

hold off;
legend('SquareWave Form', 'Fundamental Component', 'instantaneous power of the fundamental component');
xlabel('Time');
ylabel({'Square waveform, its fundamental component(fc),';'and instantaneous power of fc'})

end

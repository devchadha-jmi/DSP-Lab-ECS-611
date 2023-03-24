clc;
clear all;
close all;

Fp = input('Enter Pass Band Frequency');
Fs = input('Enter Stop Band Frequency');
Rp = input('Enter Pass Band Attenuation');
Rs = input('Enter Stop Band Attenuation');

Wp = 2*pi*Fp;
Ws = 2*pi*Fs;

[N, Wn]= buttord(Wp,Ws,Rp,Rs,'s');
fN = Wn/(2*pi);
[num, den]= butter(N, Wn, 's');

omega= [0: 200: 12000*pi];

h = freqs(num, den, omega);

gain= 20*log10(abs(h));

plot(omega/(2*pi), gain);
xlabel("frequency");
ylabel("gain");
title ("Butterworth Filter");

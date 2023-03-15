clc;
clear all;
close all;

N = input('Enter length of sequence:');
M = input('Enter length of DFT:');

u = [ones(1, N)];
U = fft(u, M);

%time sequence from 0 to N-1
t = 0:1:N-1;

subplot(311);
stem(t,u);
xlabel("time");
ylabel("Amplitude")
title("Original sequence");

m = 0:1:M-1;

subplot(312);
k1 = abs(U)
stem(m, k1);
xlabel("frequency");
ylabel("Magnitude");
title("Magnitude of DFT");

subplot(313);
k2 = angle(U);
stem(m, k2);
xlabel("frequency");
ylabel("phase");
title ("Phase of DFT");
 
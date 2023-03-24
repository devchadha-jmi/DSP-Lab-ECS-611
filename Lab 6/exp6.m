clc;
clear all;
close all;

N = 16;
M = 512;
n = 0:1:N-1 ;
r = 3;

x = cos(2*pi*r*n/N);
subplot(3,1,1);

%plot(n,x)

plot(n/16, x);
xlabel('n');
ylabel('x');
title('Original Sequence');


U=fft(x,M);
t=0:1:M-1;
subplot(3,1,2);
plot(t/512, abs(U));
xlabel('t');
ylabel('U');
title('Magnitude of DTFT');

subplot(3,1,3);
plot(t/512, angle(U));
xlabel('t');
ylabel('Angle');
title('Angle of DTFT');
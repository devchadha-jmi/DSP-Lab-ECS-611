clc;
close all;
clear all;

n = input('Enter length of sequence of transfer fxn');
seq1 = 0 : n-1;

%Impulse response
l1=length(seq1);
p = input('Enter p vector');

l2=length(seq1);
q = input('Enter q vector');

%Impulse Signal
x = [1 zeros(1,length(seq1)-1)];

%Impulse Response
y = filter(p,q,x);

%Time Field for Impulse Response
k = 0:length(seq1)-1;

disp(y);

subplot(2,2,1);
stem(k,y);
xlabel('discrete time');
ylabel('p');
title('Impulse response');


%Convolution

c1 = conv(p,q);
disp('Linear conv of 2 seq');
disp(c1);

k1 = 0 : length(c1)-1;
subplot(222);
stem(k1,c1);
xlabel('k1');
ylabel('conv');
title('covolution');

%Deconv
[y,z] = deconv(c1,p);
disp('Linear deconv of 2 seq');
disp(y);
disp(z);
 
k2=0:length(y)-1;
subplot(223);
stem(k2,y);
xlabel('q');
ylabel('deconv');
title('decovolution');

[y,z] = deconv(c1,q);
disp('Linear deconv of 2 seq');
disp(y);
disp(z);
 
k2=0:length(y)-1;
subplot(224);
stem(k2,y);
xlabel('p');
ylabel('deconv');
title('decovolution');
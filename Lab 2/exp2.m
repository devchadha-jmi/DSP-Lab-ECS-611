clc;
clear all;
close all;

% Defined sequence 1
n1=-4:5;
x=[2 4 6 8 10 12 14 16 18 20];
subplot(321);
stem (n1,x);
xlabel ('time');
ylabel ('magnitude');
title('A');
xticks(min(n1):1:max(n1));

% Defined sequence 2
n2=0:3;
y=[1 2 3 4];
subplot(322);
stem (n2,y);
xlabel ('time');
ylabel ('magnitude');
title('B');
xticks(min(n2):1:max(n2));

% Zero Padding for the shorter sequence
n = min(min(n1), min(n2)):max(max(n1), max(n2));
z1=zeros(1,length(n));
z2=zeros(1,length(n));

z1((n>=min(n1))&(n<=max(n1)))=x();
z2((n>=min(n2))&(n<=max(n2)))=y();

sum=z1+z2;
mult=z1.*z2;
sub=z1-z2;

subplot(323);
stem(n,sum);
xlabel ('time');
ylabel ('magnitude');
title('A + B');
xticks(min(n):1:max(n));

subplot(324);
stem(n,sub);
xlabel ('time');
ylabel ('magnitude');
title('A - B');
xticks(min(n):1:max(n));

subplot(325);
stem(n,mult);
xlabel ('time');
ylabel ('magnitude');
title('A * B');
xticks(min(n):1:max(n));

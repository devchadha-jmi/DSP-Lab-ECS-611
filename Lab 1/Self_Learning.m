clc;
clear all;

a= 5;
b= 10;
c = a+b;

%Basic Difference between Stem and Plot 
x = [1 2 3 4];
t = 1:1:4;

subplot (2,1,1);
stem(x,t);

subplot (2,1,2);
plot(x,t);
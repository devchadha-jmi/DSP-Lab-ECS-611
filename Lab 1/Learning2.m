clc;
clear all;

x = input('Enter x');
seq = 0:1:2*x;

t = -x:1:x;
stem (t, seq);
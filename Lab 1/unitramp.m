clc;
clear all;
close all;

l_input = input('Enter the length of sequence you want on either side');
seq = -l_input : l_input;
len = length(seq);

% Unit Ramp
y(1 : len/2) = 0
y((len +1)/2 : len) = 1;
y2 = seq.*y;
stem (seq, y2);
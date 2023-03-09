clc;
clear all;

l_input = input('Enter the length of sequence required on 1 side');
seq = -l_input : l_input;
len = length(seq);

% Unit Step
y(1 : len/2) = 0;
y((len +1)/2 : len) = 1;
stem (seq, y);
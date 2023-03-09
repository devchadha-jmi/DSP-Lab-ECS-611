clc;
clear all;
close all;

l_input = input('Enter the length of sequence you want on either side');
seq = -l_input : l_input;
len = length(seq);

% Signum
y(1 : len/2) = -1
y ((len +1)/2) = 0
y((len +1)/2 + 1 : len) = 1;
stem (seq, y);
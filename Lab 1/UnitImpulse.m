clc;
clear all;

l_input = input('Enter the length of sequence you want on either side');
seq = -l_input : l_input;
l = length(seq);

y = zeros(1, l);
y((l+1)/2) = 1;
stem (seq, y);

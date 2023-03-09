clc;
clear all;
close all;

l_input = input('Enter the length of sequence you want on either side');
a       = input('Enter the amplitude');
seq = -l_input : l_input;
len = length(seq);

% Exponential
y = a.^seq;
stem (seq, y);
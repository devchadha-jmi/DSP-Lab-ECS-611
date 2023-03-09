clc;
clear all;
close all;

l_input = input('Enter the length of sequence you want on either side');
seq = -l_input : l_input;
len = length(seq);

% Sine
y = sin(.2*pi*seq);
stem (seq, y);
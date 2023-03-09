clc;
close all;
clear all;

n = -2:5
value = [1,2,3,4,5,6,7,8]
%Axis command sets the upper and lower limits of the axes
axis([-10 10 -10 10]);
subplot(4,2,1)
stem (n, value);
xlabel ('time');
ylabel ('magnitude');
title('Orignal Signal');


%Time Reversal
mirror = fliplr(value)
new_value = fliplr(-n)
axis([-10 10 -10 10]);
subplot (4,2,2)
stem (new_value, mirror);
xlabel ('time');
ylabel ('magnitude');
title('Time Reversed');


%Time Shifting
adv = n + 3;
del = n - 3;

axis([-10 10 -10 10]);
subplot(4,2,3)
stem (adv, value);
xlabel ('time');
ylabel ('magnitude');
title('Advanced Signal');


axis([-10 10 -10 10]);
subplot(4,2,4)
stem (del, value);
xlabel ('time');
ylabel ('magnitude');
title('Delayed Signal');


clear all, close all, clc;
% Define zeros, poles, and gain
z = [-1; 1; 1+1i; 1-1i]; % Zeros (column vector)
p = [-0.5; 0.5; 0.1-0.2i; 0.1+0.2i]; % Poles (column vector)
k = 1; % Gain
% Convert zeros, poles, and gain to transfer function form
[num, den] = zp2tf(z, p, k);
% Display the numerator and denominator coefficients
disp('Numerator coefficients:');
disp(num);
disp('Denominator coefficients:');
disp(den);



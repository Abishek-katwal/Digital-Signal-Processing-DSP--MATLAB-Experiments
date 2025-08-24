clear all, close all, clc;
num = [1]; % Coefficient of x[n] 
den = [1, -1]; % Coefficients of y[n] and y[n-1] 
% Calculate the poles and zeros using tf2zp 
[zeros, poles, gain] = tf2zp(num, den); 
% Display the poles and zeros 
disp('Zeros:'); disp(zeros); 
disp('Poles:'); disp(poles); 
% Plot the poles and zeros using zplane
zplane(zeros, poles);
title('Poles and Zeros of the Accumulator Circuit');
xlabel('Real Part'); ylabel('Imaginary Part'); grid on;
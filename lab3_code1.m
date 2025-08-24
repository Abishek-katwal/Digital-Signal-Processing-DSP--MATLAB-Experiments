clear all,close all,clc;
num = [1,0,2], den = [1,-0.1,-0.8, 0.6];
% Calculate the poles, zeros, and gain using tf2zp
[zeros, poles, gain] = tf2zp(num, den);
% Display the poles, zeros, and gain
disp('Zeros:'),disp(zeros);
disp('Poles:'),disp(poles);
disp('Gain:'),disp(gain);
% Plot the poles and zeros using zplane
zplane(num, den);
title('Poles and Zeros of the Digital Filter');
xlabel('Real Part'),ylabel('Imaginary Part'),grid on;

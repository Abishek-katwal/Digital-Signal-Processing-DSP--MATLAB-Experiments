clear all, close all, clc;
A = 1, F = 3, th = 0, T = 1/F, Fs = 20*F, m = 10; % Fs > 2fm 
t = 0:1/Fs:m*T;
x = A*cos(2*pi*F*t + th);
plot(t,x,'LineWidth',1.5);
title('Continuous Time Sinusoidal Signal');
xlabel('time(sec)'), ylabel('Amplitude'),grid on;












































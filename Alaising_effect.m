clear all, close all, clc;
A = 1, F = 3, th = 0, T = 1/F, Fs = 20*F, m = 10; % Fs > 2fm 
t = 0: 1/Fs : m*T;
x = A * cos(2 * pi * F * t + th);
plot(t,x,'Linewidth',1.5);
title('Continuous Time Sinusoidal Signal with distorted signal');
xlabel('time(sec)'), ylabel('Amplitude'),grid on;

Fs = 1.2*F; % Fs < 2fm 
t = 0 : 1/Fs : m * T;
x = A * cos(2 * pi * F * t + th);
hold on;
plot(t,x,'k-.','Linewidth',1.5);
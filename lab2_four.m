clc,clear all, close all;
% Define the parameters
f = 0.1;  % Frequency of the sine wave
n = 0:99;  % Time index
x = sin(2 * pi * f * n);  % Generate the sine wave signal
% Define the differentiator y[n] = x[n] - x[n-1]
B = [1, -1];  % Differentiator coefficients
A = 1;
% Pass the signal through the differentiator
y = filter(B, A, x);
% Plot the input and output signals
subplot(2, 1, 1),plot(n, x,'LineWidth',1.5);
title('Input Sine Wave Signal'),xlabel('n'),ylabel('Amplitude'),grid on;

subplot(2, 1, 2),plot(n, y,'LineWidth',1.5);
title('Output Signal after Differentiation'),xlabel('n'),ylabel('Amplitude'),grid on;

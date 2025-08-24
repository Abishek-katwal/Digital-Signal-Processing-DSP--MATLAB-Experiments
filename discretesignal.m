% Define parameters
f_m = 0.1; % Frequency of the sinusoid
f_s = 2 * f_m; % Sampling frequency
T_s = 1 / f_s; % Sampling period
n = 0:T_s:100; % Discrete time indices with step size as sampling period
x = sin(2 * pi * f_m * n); % Discrete-time sinusoid

% Plot the sinusoid
stem(n, x,'LineWidth',1.5);
title('Discrete-Time Sinusoid with Aliasing Effect');
xlabel('n');
ylabel('x[n]');
grid on;

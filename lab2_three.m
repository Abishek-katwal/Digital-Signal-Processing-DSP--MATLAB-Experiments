% Define the parameters
f1 = 0.05;
f2 = 0.47;
n = 0:99;  % Time index

% Generate the sinusoidal signals
x1 = sin(2 * pi * f1 * n);
x2 = sin(2 * pi * f2 * n);

% Add the two signals
x = x1 + x2;

% Apply the three-point smoothing digital filter y[n] = 1/3(x[n] + x[n-1]
% + x[n-3]) where H(z)= Y(z)/X(z) so, A and B are num.and den. coeffi
B = [1/3, 1/3, 1/3];  % Filter coefficients
A = 1;
y = filter(B,A, x);

% Plot the signals
subplot(4, 1, 1);
plot(n, x1,'Linewidth',1.5);
title('a. Signal x1'),xlabel('n'),ylabel('Amplitude');

subplot(4, 1, 2);
plot(n, x2,'Linewidth',1.5);
title('b. Signal x2'),xlabel('n'),ylabel('Amplitude');

subplot(4, 1, 3);
plot(n, x,'Linewidth',1.5);
title('c. Resultant Signal x'),xlabel('n'),ylabel('Amplitude');

subplot(4, 1, 4);
plot(n, y,'Linewidth',1.5);
title('d. Filtered Signal y'),xlabel('n'),ylabel('Amplitude');

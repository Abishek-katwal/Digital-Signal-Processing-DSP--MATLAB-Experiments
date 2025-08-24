% Define the sequence
x = [1, 2, 3, 4, 5, 6, 7, 8];
% Calculate the DFT
X = dft(x);
% Get the real part
X_real = real(X);
% Get the imaginary part
X_imag = imag(X);
% Get the absolute value
X_abs = abs(X);
% Get the phase
X_phase = angle(X);
% Plot the graphs
subplot(2, 2, 1);
stem(X_real,'filled','LineWidth',1.5);
title('Real Part'),grid on;

subplot(2, 2, 2);
stem(X_imag,'filled','LineWidth',1.5);
title('Imaginary Part'),grid on;

subplot(2, 2, 3);
stem(X_abs,'filled','LineWidth',1.5);
title('Absolute Value'),grid on;

subplot(2, 2, 4);
stem(X_phase,'filled','LineWidth',1.5);
title('Phase'),grid on;

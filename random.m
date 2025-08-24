% Define the length of the signal
N = 100;

% Generate the random signal
random_signal = randn(1, N);

% Plot the random signal
plot(random_signal,'LineWidth',1.5);
title('Normally Distributed Random Signal');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

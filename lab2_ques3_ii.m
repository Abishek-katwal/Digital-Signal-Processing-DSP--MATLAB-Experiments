% Define the first system
numerator1 = [1, 2, 3];
denominator1 = [1, 0.5, 0.25];

% Define the second system
numerator2 = [0.5, 1, 1.5];
denominator2 = [1, 0.3, 0.1];

% Compute the impulse responses
[h1, t1] = impz(numerator1, denominator1);
[h2, t2] = impz(numerator2, denominator2);

% Plot the impulse responses
subplot(2, 1, 1),stem(t1, h1,'LineWidth',1.5), grid on;
title('Impulse Response of System 1'), xlabel('Time (samples)'), ylabel('Amplitude');

subplot(2, 1, 2),stem(t2, h2,'LineWidth',1.5), grid on;
title('Impulse Response of System 2'), xlabel('Time (samples)'),ylabel('Amplitude');

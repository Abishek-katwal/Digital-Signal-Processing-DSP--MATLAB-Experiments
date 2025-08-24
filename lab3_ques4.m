clear all; close all; clc;
% Define the zeros, poles, and gain of the 4th-order filter
z = [1, -1, 1+1i, 1-1i]; % Zeros
p = [0.5, -0.5, 0.1+0.2i, 0.1-0.2i]; % Poles
k = 1; % Gain
% Factorize the filter into second-order sections
sos = zp2sos(z', p', k); % Ensure zeros and poles are column vectors

% Display the second-order sections (SOS matrix)
disp('Second-order sections (SOS):');
disp(sos);

% Plot the poles and zeros of the overall filter
zplane(z, p); % Plot poles and zeros of the original 4th-order filter
title('Poles and Zeros of the 4th-Order Digital Filter');
xlabel('Real Part');
ylabel('Imaginary Part');
grid on;

% Explanation of SOS
disp('Each row of the SOS matrix represents a 2nd-order digital filter:');
disp('[b0 b1 b2 a0 a1 a2]');

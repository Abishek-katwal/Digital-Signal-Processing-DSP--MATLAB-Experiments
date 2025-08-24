clear all;
close all;
clc;

X = [45.0000 + 0.0000i, 4.5000 + 12.3636i, 4.5000 + 5.3629i, 4.5000 + 2.5981i, 4.5000 + 0.7935i, 4.5000 - 0.7935i, 4.5000 - 2.5981i, 4.5000 - 5.3629i, 4.5000 - 12.3636i];
N = length(X);
x = zeros(size(X));

for n = 0 : N-1
    for k = 0 : N-1
        x(n+1) = x(n+1) + X(k+1) * exp(j*2*pi*k*n/N);
    end
end

x = x / N;
disp(x.');

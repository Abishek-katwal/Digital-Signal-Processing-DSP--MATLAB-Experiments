clc,close all, clear all;
x = [1,2,3,4,5,6,7,8,9];
N = length(x);
X = zeros(size(x)); 
for k = 0 : N-1
    for n = 0 : N-1
        X(k+1) = X(k+1) + x(n+1) * exp (-j*2*pi *k*n/N);
    end
end
X'  % X return the DFT value in row but X prime give in the column(transpose) 
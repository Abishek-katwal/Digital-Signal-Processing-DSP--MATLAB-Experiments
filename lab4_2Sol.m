clc,close all, clear all;
x = [1,2,3,4,5,6,7,8,9];
N = length(x);
WN = exp(-j*2*pi/N);
n = 0 : N-1;
k = 0 : N-1;
nk = n'*k;
WNnk = WN.^nk;
X = WNnk * x'
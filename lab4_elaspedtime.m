clc,clear all, close all;
x = [1,2,3,4,5,6,7,8,9]
tic
fft(x);
toc;
tic 
dft(x);
toc
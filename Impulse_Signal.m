clear all, close all, clc; 
n = -3 : 4;
 d = impseq(n,0);
stem(n,d,'Linewidth',1.5),grid on;
title('Impluse Signal δ[n]'), xlabel('Discrete integer(n)'), ylabel('Amplitude')



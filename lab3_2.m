clear all, close all, clc;
zeros =[-1,1,1+i,1-i], poles = [-0.5,0.5,0.1-0.2i,0.1+0.2i],k = 1;
[num,den] = zp2tf[zeros,poles,k];
disp('Numerators:'),disp(num);
disp('Denominators:'),disp(den);

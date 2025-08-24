clear all, close all, clc;
B = [1,0,2], A = [1,-0.1,-0.8, 0.6];
w = -pi : 0.01 : pi;
num = B(1) + B(2) * exp(-j*w) + B(3) * exp(-j*2*w);
den = A(1) + A(2) * exp(-j*w) + A(3) * exp(-j*2*w) + A(4) * exp(-j*3*w);
mag = abs(num./den);
phase = phase(num./den);
subplot(2,1,1);
plot(w,mag,'LineWidth',1.5),grid on;
subplot(2,1,2);
plot(w,phase,'LineWidth',1.5),grid on;
figure
freqz(B,A)
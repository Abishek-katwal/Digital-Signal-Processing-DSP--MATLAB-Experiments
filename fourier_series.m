clear all ,close all, clc;
x = 0, N = 1000;
t = linspace(0,15,100); %linearspace between 0-15 100 sample is taken stepsize
for n = 1:2:N % for odd start from '0' 
    x = x + sin(2*pi*n*t)/n;
end
figure
plot(t,x, 'LineWidth',1.5), title('Fouries Series Summation'),xlabel('time(sec)'),ylabel('Amplitude');
grid on;

%noisy sinusoidal signal

t = linspace (0,1,100);
N = length(t), F= 3;
x = cos(2*pi*F*t);
xn = x + 0.1*randn(1,N); %addition of 10% random signal to signal 'x'
figure
grid on;
plot(t,xn, 'LineWidth',1.5),title('Noisy Sinusoidal Signal'),xlabel('time(sec)'),ylabel('Amplitude');




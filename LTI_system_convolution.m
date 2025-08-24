clear all, close all, clc;
x = [1,4,1,6,7];
nx = -2:2; % DT signal start from -2 and end at 2
h = [1,2,-1,3,1,5];
nh = -3:2;
y = conv(x,h);
n = nx(1)+nh(1):nx(end)+nh(end);
% here o/p start at nx first index plus nh first index : nx last index plus nh last index 
% either we can add  nx(len(x))+nh(len(h))

subplot(3,1,1),stem(nx,x,'LineWidth', 1.5), title('a.> input signals'),xlabel('range of integer'),ylabel('amplitude')
axis([n(1),n(end),min(x)-1,max(x)+1]);

subplot(3,1,2),stem(nh,h,'LineWidth', 1.5),title('b.> impluse response'),xlabel('range of integer'),ylabel('amplitude')
axis([n(1),n(end),min(x)-1,max(x)+1]);

subplot(3,1,3),stem(n,y,'LineWidth', 1.5),title('c.> output signals'),xlabel('range of integer'),ylabel('amplitude')
axis([n(1),n(end),min(x)-1,max(x)+1]), grid on;

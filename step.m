n = -10:10,un = ustep(n,0);
subplot(4,1,1),stem(n,un,'LineWidth',1.5),grid on;
title('a. Unit Step Signal U[n]'), xlabel('Discrete Integer(n)'),ylabel('Amplitude')

uni = ustep(n,2); % uni =U(n-2)
subplot(4,1,2),stem(n, uni,'LineWidth',1.5),grid on;
title('b. Unit Step Signal U[n-2]'), xlabel('Discrete Integer(n)'),ylabel('Amplitude')


%impluse signal from unit step signal
n = -8 : 8;
dn = ustep(n,0) - ustep(n,1);
subplot(4,1,3),stem(n,dn,'LineWidth',1.5),grid on;
title('c. Impluse Signal δ[n] from Unitstep Signal'), xlabel('Discrete Integer(n)'),ylabel('Amplitude')


%ramp signal from unit step signal
n = -6 : 6;
rn = n .* ustep(n,0);
subplot(4,1,4);
stem(n,rn,'LineWidth',1.5),grid on;
title('d. Ramp Signal r[n] from Unitstep Signal'), xlabel('Discrete Integer(n)'),ylabel('Amplitude')



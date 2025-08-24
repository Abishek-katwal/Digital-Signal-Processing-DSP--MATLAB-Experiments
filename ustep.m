function u = ustep(n,n0); %n0 means how far from n
u = 0.5 * (sign(n-n0 + eps) + 1);
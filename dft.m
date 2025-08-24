function X = dft(x)
N = length(x);
X = zeros(size(x)); 
for k = 0 : N-1
    for n = 0 : N-1
        X(k+1) = X(k+1) + x(n+1) * exp (-j*2*pi *k*n/N);
    end
end
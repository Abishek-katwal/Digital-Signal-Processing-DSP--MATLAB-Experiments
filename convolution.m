function [y, n] = convolution(x1, n1, x2, n2)
    % Calculate the convolution of x1 and x2
    y = conv(x1, x2);
    
    % Calculate the time index for the convolution result
    n_start = n1(1) + n2(1);
    n_end = n1(end) + n2(end);
    n = n_start:n_end;
end




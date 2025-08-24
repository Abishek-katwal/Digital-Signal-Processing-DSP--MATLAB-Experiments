function [y, ny] = convolution(x1, x2)
    % Define the time index for x1[n] and x2[n]
    n1 = 0:length(x1)-1;
    n2 = 0:length(x2)-1;
    
    % Calculate the convolution
    y = conv(x1, x2);
    
    % Calculate the time index for the convolution result
    ny = n1(1) + n2(1) : n1(end) + n2(end);
end

% Example usage
x1 = [1, 2, 3];
x2 = [0, 1, 0.5];
[y, ny] = convolution(x1, x2);

disp('Convolution result:');
disp(y);
disp('Time index:');
disp(ny);



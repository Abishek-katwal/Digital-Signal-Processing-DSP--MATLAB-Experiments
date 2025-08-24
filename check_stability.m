function check_stability(numerator, denominator)
    % Compute the impulse response
    [h, t] = impz(numerator, denominator, 1001); % Compute up to h[1000]

    % Display the values at specific points
    h0 = h(1); % h[0]
    h10 = h(11); % h[10]
    h100 = h(101); % h[100]
    h1000 = h(1001); % h[1000]

    fprintf('h[0] = %f\n', h0);
    fprintf('h[10] = %f\n', h10);
    fprintf('h[100] = %f\n', h100);
    fprintf('h[1000] = %f\n', h1000);

    % Check if the values are converging
    if abs(h1000) < abs(h100) && abs(h100) < abs(h10) && abs(h10) < abs(h0)
        fprintf('The filter is stable.\n');
    else
        fprintf('The filter is unstable.\n');
    end
end


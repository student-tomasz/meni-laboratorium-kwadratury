f = @(x)(cos(x));
degrees = [
    1;
    2;
    3;
    4;
];
segments = [
      5;
     10;
     20;
     50;
];
range = [
    -pi/2, pi/2;
];
actual_value = 2;

values = zeros(length(degrees), length(segments));
for i = 1:length(degrees)
    N = degrees(i);
    a = range(1);
    b = range(2);
    for j = 1:length(segments)
        M = segments(j);
        values(i, j) = composite_newton_cotes(N, f, a, b, M);
    end
end

values
errors = abs((values - actual_value) ./ actual_value)
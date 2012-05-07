f = @(x)(-x*exp(-x));
segments = [
      5;
     10;
    100;
];
actual_value = -0.5940;

values = zeros(length(ranges), 1);
for i = 1:length(values)
    values(i) = composite_newton_cotes(f, segments(i), 0, 2);
end
errors = abs((values - actual_value) ./ actual_value);
plot(segments, errors, 'ro');
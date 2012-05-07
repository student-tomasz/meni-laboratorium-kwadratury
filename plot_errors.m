function [ errors ] = plot_errors( f, N, ranges, actual_values )

values = zeros(length(ranges), 1);
for i = 1:length(values)
    values(i) = newton_cotes(f, N, ranges(i, 1), ranges(i, 2));
end
errors = abs((actual_values - values) ./ actual_values);
plot(diff(ranges'), errors, 'ro');

end


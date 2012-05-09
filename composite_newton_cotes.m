function [ integral ] = composite_newton_cotes( N, f, a, b, M )

x = linspace(a, b, M+1);
integral = 0;
for i = 1:M
    integral = integral + newton_cotes(N, f, x(i), x(i+1));
end

end

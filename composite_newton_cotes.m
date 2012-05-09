function [ integral ] = composite_newton_cotes( f, M, a, b )

x = linspace(a, b, M+1);
integral = (b-a)/M/2 * (f(a) + 2*sum(arrayfun(f,x(2:M))) + f(b));

end

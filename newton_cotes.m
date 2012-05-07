function [ integral ] = newton_cotes( f, N, a, b )

% wspolczynniki dla 1. i 2. rzedu wyznaczone w madrej ksiazce
I = [
    1, 1, 0;
    1, 4, 1;
];
m = [
    2;
    6;
];

% rownoodlegle wezly
x = linspace(a, b, N+1);
sum = 0;
for n = 0:1:N
    sum = sum + I(N, n+1) / m(N) * f(x(n+1));
end
integral = (b - a) * sum;

end

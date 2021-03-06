function [ integral ] = newton_cotes( N, f, a, b )

% wspolczynniki wyznaczone na wiki
I = [
    1,  1,  0,  0, 0;
    1,  4,  1,  0, 0;
    1,  3,  3,  1, 0;
    7, 32, 12, 32, 7;
];
m = [
     1/2;
     1/3;
     3/8;
    2/45;
];
h = (b-a)/N;

x = linspace(a, b, N+1);
integral = h * m(N) * sum(I(N, 1:N+1) .* arrayfun(f, x));

end

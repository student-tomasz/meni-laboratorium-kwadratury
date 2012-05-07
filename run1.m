f = @(x)(x^3);
N = 1;
ranges = [
    1,  2;
    1,  4;
    1, 10;
];
actual_values = [
       3.75;
      63.75;
    2499.75;
];
plot_errors(f, N, ranges, actual_values);

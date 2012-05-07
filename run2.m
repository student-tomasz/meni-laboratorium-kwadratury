f = @(x)(5*x^4);
N = 2;
ranges = [
    0,  1;
    0,  5;
    0, 10;
];
actual_values = [
         1;
      3125;
    100000;
];
plot_errors(f, N, ranges, actual_values);

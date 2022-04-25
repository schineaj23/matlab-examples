% Andrew Schineller
% Simple linear regression

x=[1:7];
y=[0.5, 2.5, 2.0, 4.0, 3.5, 6.0, 5.5];
n = length(x);

m = (n*sum(x.*y) - sum(x)*sum(y))/(n*sum(x.^2) - sum(x)^2);
b = (sum(y) - m*sum(x)) / n;
r = (n*sum(x.*y) - sum(x)*sum(y))/(sqrt(n*sum(x.^2)-sum(x)^2)*sqrt(n*sum(y.^2)-sum(y)^2));

fprintf("Equation y=mx+b\nm:\t%.3f\nb:\t%.3f\n", m, b);
fprintf("y = (%.3f)x + %.3f\n", m, b);
fprintf("R: %.3f R^2: %.3f\n", r, r^2);

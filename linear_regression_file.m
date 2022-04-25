% Andrew Schineller
% Simple linear regression with FILE

format compact;
clear;

t = readtable("Fire Theft Chicago.xlsx", 'Range', 'B2:C44');
x=t.X;
y=t.Y;
n = length(x);

m = (n*sum(x.*y) - sum(x)*sum(y))/(n*sum(x.^2) - sum(x)^2);
b = (sum(y) - m*sum(x)) / n;
r = (n*sum(x.*y) - sum(x)*sum(y))/(sqrt(n*sum(x.^2)-sum(x)^2)*sqrt(n*sum(y.^2)-sum(y)^2));

fprintf("Equation y=mx+b\nm:\t%.3f\nb:\t%.3f\n", m, b);
fprintf("y = (%.3f)x + %.3f\n", m, b);
fprintf("R: %.4f R^2: %.4f\n", r, r^2);

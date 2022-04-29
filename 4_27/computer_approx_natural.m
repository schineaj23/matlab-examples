% Andrew Schineller
% Computer percentages (Question 2)

clear;

% the x values are years AFTER 1981
year = [0, 3, 8, 12, 16, 19, 20, 22, 23, 29];
household = [0.5, 8.2, 15, 22.9, 36.6, 51, 56.3, 61.8, 65, 76.7];

% get coefficients and make function
% Reusing old linear regression code
% Note that to approximate a curve, y must change to log(y)
C = 90;
n = length(year);
y = log((90./household) -1);
x = year;
m = (n*sum(x.*y) - sum(x)*sum(y))/(n*sum(x.^2) - sum(x)^2);
b = (sum(y) - m*sum(x)) / n;

% Use the slope and intercept to rearrange the function in the form of y=A*r^x;
A = exp(b);
r = exp(m);
fx = @(x) C./(1 + A*r.^x);


% calculate r-squared
r_squared = 1 - sum((household - fx(year)).^2)/sum((household - mean(household)).^2);

% Doing (year - 1981) to avoid confusion
% stopping the array at 9 so I can insert the elements
plot(year, household, '*-k', [year(1:9), 2008-1981, 2010-1981, 2013-1981], fx([year(1:9), 2008-1981, 2010-1981, 2013-1981]),'b-');

legend('Recorded Data', 'Model');
xlabel('Years after 1981');
ylabel('Household with computer (%)');
title("Percentage of Households with Computers Per Year");
text(2, 55, sprintf("R^2 = %.3f\n2008: %.2f%%\n2013: %.2f%%", r_squared, fx(2008-1981), fx(2010-1981)));
text(2, 65, sprintf("$y = \\frac{%d}{1\\space+\\space%.2fe^{%.2fx}}$", C, A, m), 'Interpreter', 'latex', 'FontSize', 20); 
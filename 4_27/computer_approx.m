% Andrew Schineller
% Computer percentages (Question 2, 3)

% the x values are years AFTER 1981
year = [0, 3, 8, 12, 16, 19, 20, 22, 23, 29];
household = [0.5, 8.2, 15, 22.9, 36.6, 51, 56.3, 61.8, 65, 76.7];

% get coefficients and make function
c = polyfit(year, household, 3);
gx = @(x) c(1)*x.^3 + c(2)*x.^2 + c(3)*x + c(4);

% calculate r-squared
r_squared = 1 - sum((household - gx(year)).^2)/sum((household - mean(household)).^2);

% Doing (year - 1981) to avoid confusion
% stopping the array at 9 so I can insert the elements
subplot(1,2,2);
plot(year, household, '*-k', [year(1:9), 2008-1981, 2010-1981, 2013-1981], gx([year(1:9), 2008-1981, 2010-1981, 2013-1981]),'b-');

legend('Recorded Data', 'Model');
xlabel('Years after 1981');
ylabel('Household with computer (%)');
title("Percentage of Households with Computers Per Year");
text(2, 65, sprintf("y = %.5fx^{3} + %.2fx^{2} + %.2fx + %.2f\nR^2 = %.3f",c(1), c(2), c(3), c(4), r_squared));
text(2, 55, sprintf("2008: %.2f%%\n2013: %.2f%%", gx(2008-1981), gx(2010-1981)));
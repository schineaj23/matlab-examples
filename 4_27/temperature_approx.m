% Andrew Schineller
% Fitting data challenge!

clear;

time=[0.0:0.2:3.0];
temp=[900,722,580,468,379,308,252,207,172,143,121,103,89,78,69,62];

% Reusing old linear regression code
% Note that to approximate a curve, y must change to log(y)
n = length(time);
y = log10(temp);
x = time;
m = (n*sum(x.*y) - sum(x)*sum(y))/(n*sum(x.^2) - sum(x)^2);
b = (sum(y) - m*sum(x)) / n;

% Use the slope and intercept to rearrange the function in the form of y=A*r^x;
A = 10^b;
r = 10^m;
fx = @(x) A*(r.^x);

% Calculate r squared of the fit compared to given data
r_squared = 1 - sum((temp - fx(time)).^2)/sum((temp - mean(temp)).^2);

% Plot given data and model
subplot(1,2,1);
plot(time, temp, '*-k', time, fx(time),'r');
legend('Recorded Data', 'Model');
xlabel('Time (hours)');
ylabel('Temperature (degrees)');
title("Temperature vs. Time");
text(0.5, 700, sprintf("y = 10^{%.3f} * 10^{%.3fx}\nR^2 = %.3f\n",b,m,r_squared));
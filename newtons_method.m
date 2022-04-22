% Andrew Schineller
% Newton's method solver

clear;
format compact;

% Get function from input
f=str2func(['@(x) ', input('enter your function f(x)= ', 's')]);

% Get our interval and inital x value
h=input('Enter initial h: ');
xn=input('Enter initial x: ');

% Calculate derivative
fprime = @(xi) (f(xi+h) - f(xi))/h;

% Convergence criteria
epsilon = 0.00001;

x = 0;
while abs(x-xn) > epsilon
    x = xn;
    xn = xn - (f(xn)/fprime(xn));
end
fprintf("There is a zero at x = ");
disp(xn);

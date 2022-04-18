% Andrew Schineller
% Question 1

x=linspace(0,10,100);
y=exp(-0.5*x).*sin(2*x);
bar(x,y);
grid on;
grid minor;
title("y(x)= e^-^0^.^5^x sin(2x)")
xlabel("x");
ylabel("y");
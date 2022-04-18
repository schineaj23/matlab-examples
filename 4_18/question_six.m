% Andrew Schineller
% Question 6

p_initial = 1000;
r = 0.08;
t = 0:1:30;
p = p_initial*exp(r.*t);
a = table(t, p);

% Rectangular graph
subplot(2,2,1);
plot(t, p);
title("Rect Coordinates");
xlabel("Time (years)");
ylabel("Balance (in USD)");
grid on;
grid minor;

% X-axis log graph
subplot(2,2,2);
semilogx(t, p);
title("X-axis Logarithmic");
xlabel("Time (years)");
ylabel("Balance (in USD)");
grid on;
grid minor;

% Y-axis log graph
subplot(2,2,3);
semilogy(t, p);
title("Y-axis Logarithmic");
xlabel("Time (years)");
ylabel("Balance (in USD)");
grid on;
grid minor;


% Rectangular graph
subplot(2,2,4);
loglog(t, p);
title("Log-Log");
xlabel("Time (years)");
ylabel("Balance (in USD)");
grid on;
grid minor;

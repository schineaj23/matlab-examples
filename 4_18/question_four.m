% Andrew Schineller
% Question 4

time_days = 10:10:70;
height_inches = [9, 22, 44, 63, 80, 94, 97];

h = 100.8 ./ ( 1 + 23*exp(-0.093.*time_days));
plot(time_days, h, 'r', time_days, height_inches, 'b--');
legend("Modeled height", "Actual Height");
title("Height of sunflower (in inches) vs Time (days)");
xlabel("Time (days)");
ylabel("Height of sunflower (inches)");
grid on;
grid minor;
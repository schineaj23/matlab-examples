% Andrew Schineller
% Question two - Plotting with Projectiles


Vi = 100;
theta = pi/4;
g = 9.8;
t = 0:0.01:20;

horizontal = t.*Vi*cos(theta);
vertical = t.*Vi*sin(theta)-(0.5*g*(t.^2));

subplot(1,2,1);
plot(t,horizontal);
grid on;
grid minor;
title("Horizontal Displacement vs Time");
xlabel("Time (sec)");
ylabel("Distance traveled in x Direction (meters)");

subplot(1,2,2);
plot(t,vertical);
grid on;
grid minor;
title("Vertical Distance vs Time");
xlabel("Time (sec)");
ylabel("Distance traveled in y Direction (meters)");
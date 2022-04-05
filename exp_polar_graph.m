% plot 2 graphs

x=linspace(0, 2*pi, 400);
y=exp(((-x).^2)/10).*sin(x);
subplot(1,3,1);
plot(x,y);
grid on;
grid minor;
title("exp function");

theta=0:0.01*pi:2*pi;
r=5*cos(4*theta);
subplot(1,3,2);
polarplot(theta, r);
title("polar function");

new_r=sqrt(5^2*cos(2*theta));
subplot(1,3,3);
polarplot(theta, new_r);
title("sqrt polar plot");
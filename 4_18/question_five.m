% Andrew Schineller
% Question 5

% the P, Q for each trial, every number must be prime
% making these pairs so the numbers are easily tweakable
p_values = [5, 11, 17, 23];
q_values = [7, 13, 19, 29];

for n = 1:4
    p = p_values(n);
    q = q_values(n);
    theta = 0:0.1:((2*pi)*(p)); % period is 2pi/(p/q)
    r = cos((p/q).*theta);
    subplot(2,2,n);
    polarplot(theta, r);
    t = sprintf("P=%d Q=%d", p,q);
    title(t);
end

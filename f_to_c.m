% convert from F to C
% andrew schineller

n=str2num(input("Enter an array of temperature (in Fahrenheit) ", 's')); % convert from string to matrix
a=zeros(1,n(1));
for i=(2:length(n))
    a(i-1) = round((n(i)-32)*(5/9));
end
disp(a);
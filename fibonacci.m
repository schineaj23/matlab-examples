% fibonacci sequence, sum of last 3 elements
% andrew schineller

max=input("How many elements do you want? (must be >3) ");

% n = n-1 + n-2
arr=[0 1 1];
for i=(4:max)
    arr(i)=arr(i-1)+arr(i-2)+arr(i-3);
end
disp(arr);
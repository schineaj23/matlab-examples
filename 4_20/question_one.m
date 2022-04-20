% Andrew Schineller
% Question One

clear;
format compact;

first = input('Enter First number: ');
second = input('Enter second number: ');

left_values = [first];
right_values = [second];
while left_values(end) ~= 1
    left_values = [left_values, floor(left_values(end)/2)];
    right_values = [right_values, right_values(end)*2];
end
final_array=[];
for n=1:length(left_values)
    if(mod(left_values(n), 2)~=0)
        final_array = [final_array, right_values(n)];
    end
end

disp("Values added");
disp(final_array);
fprintf("Final sum: %d\n", sum(final_array));
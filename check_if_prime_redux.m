% prime decomposition REDUX
% andrew schineller

n=input('Enter number to check if it is prime: ');

% check if number has factors other than one
% add each factor to an array
a=[];
for i=(2:sqrt(n)+1) % adding one so that square roots are included
    if(rem(n, i)==0)
        a=[a i];
    end
end

% if the array has elements, then it must have factors!
if(~isempty(a))
    fprintf("No, the number is not prime. The number is divisible by");
    disp(a);
else
    fprintf("Yes, the number is prime\n");
end
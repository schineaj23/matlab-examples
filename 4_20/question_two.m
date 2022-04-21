% Andrew Schineller
% Question Two

%height = str2num(input("Enter heights: ", "s"));
height = [1 8 6 2 5 4 8 8 3 7];

% extremely unoptimized way of doing this O(n^2) time
% it do work tho
max_area = 0;
max_elements = [0,0];
for i=1:length(height)
    for j=1:length(height)
        if(i<j)
            area = min(height(i),height(j))*((j-i)-1);
            if (area > max_area)
                min(height(i), height(j))
                max_area = area;
                max_elements = [i,j];
            end
        end
    end
end
fprintf("Maximum area: %d\nFirst element: %d Second Element: %d\n", max_area, max_elements(1), max_elements(2));
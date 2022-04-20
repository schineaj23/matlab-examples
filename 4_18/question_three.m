% Andrew Schineller
% Question 3

contributions = [15,5,10,5,15];
total = sum(contributions);

% label the segments nicely :)
fmt_amount = @(name, amt) sprintf("%s $%d (%.f%%)",name, amt, (100*amt/total));
contribution_labels = {fmt_amount('George',15) fmt_amount('Sam', 5), fmt_amount('Betty', 10), fmt_amount('Charlie', 5), fmt_amount('Suzie', 15)};

% only explode sam (sorry sam)
exploded = [0,1,0,0,0];

pie(contributions, exploded, contribution_labels);
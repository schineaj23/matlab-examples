% Andrew Schineller
% Question 3

contributions = [15,5,10,5,15];
total = sum(contributions);
% convoluded way to format the contributions lol, this answers the follow
% up qestion since it displays the dollar amount and percentages of ALL
% members, including Sam
fmt_amount = @(name, amt) sprintf("%s $%d (%.f%%)",name, amt, (100*amt/total));
contribution_labels = {fmt_amount('George',15) fmt_amount('Sam', 5), fmt_amount('Betty', 10), fmt_amount('Charlie', 5), fmt_amount('Suzie', 15)};
pie(contributions, contribution_labels);
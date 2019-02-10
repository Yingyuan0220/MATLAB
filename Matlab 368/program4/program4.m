%% CS368 Summer 2018 Programming Assignment 4
% * Name: Yingyuan Zhang
% * Due Date: Friday, July 15 by 11:59 pm

%% Part 1
card = ones(1,52);
for i = 1:52
    if (mod(i, 2) == 0 || mod(i,3) == 0) && mod(i, 6) ~= 0
        card(i) = 0;
    end
end
disp(card);

%% Part 3
card = flipCards(52);
find(card)
card = flipCards(156);
find(card)


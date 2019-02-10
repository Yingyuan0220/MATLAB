%% CS368 Summer 2018 Programming Assignment 1
% * Name: Yingyuan Zhang
% * Due Date: Tuesday, July 3 by 11:59 pm


%% Problem 1: Creating a tip table
% Create and display a matrix with four columns:
%
% * column 1 contains bill totals from $5 to $100 in increments of $5
% * column 2 contains the tip amount if the tip is 15% of the bill
% * column 3 contains the tip amount if the tip is 18% of the bill
% * column 4 contains the tip amount if the tip is 20% of the bill
clear
format bank  % this will format money values nicely

tips = [5:5:100]';  % create the vector of each amount of money
tips = tips(:,[1 1 1 1]); 
tips = tips .* [1 0.15 0.18 0.2];   % calculate the amount of tips in each proportion

disp(tips)
format short % change formatting back to default setting

%% Problem 2: Density of freshwater
% Shows water density under each temperature

clear
TF = [40 68 100]';
TC = 5/9*(TF - 32);
d = 5.5289 * 10^(-8)*TC.^3 - 8.5016*10^(-6)*TC.^2 + 6.5622*10^(-5)*TC + 0.99987;

disp("Freshwater density is "+num2str(d(1))+" at "+num2str(TF(1))+" F");
disp("Freshwater density is "+num2str(d(2))+" at "+num2str(TF(2))+" F");
disp("Freshwater density is "+num2str(d(3))+" at "+num2str(TF(3))+" F");

%% Problem 3: Distance to horizon
% Plot the distance to the horizon vs the height of a hill for hill heights from 0 to 10,000 feet on Earth and Mars on one plot figure.

clear
h = 0:1:10000;  % set increment to 1
dmars = sqrt(2*4217*5280.*h + h.^2)/5280;  % calculate the distance on Mars
dearth = sqrt(2*7926*5280.*h + h.^2)/5280;  % calculate the distance on Earth

figure
plot(h, dmars,'r', h, dearth, 'b--')
title("Distance to horizon on Mars and Earth")  
xlabel("height of the mountain (feet)")
ylabel("distance to horizon (miles)")
legend("Mars", "Earth")
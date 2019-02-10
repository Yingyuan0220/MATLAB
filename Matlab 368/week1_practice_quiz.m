% Example script
% Calculates the future value of a principal amount of money earning a
% given interest rate (compounded annually) for a given number of years

% initialize variables
principal = 10000;
interest = 0.0275; % interest rate is 2.75%
years = 8;

future = principal * (1 + interest) ^ years;
disp(['Investing $', num2str(principal), ' for ', num2str(years),  ...
      ' years at ', num2str(interest * 100), ...
      '% annually yields $', num2str(future)])
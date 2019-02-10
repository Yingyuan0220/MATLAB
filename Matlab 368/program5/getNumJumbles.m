function number = getNumJumbles()
% getNumJumbles
%
% Returns a valid number of jumbles to solve by repeatedly asking the 
% user until the user enters a valid value.  A value is not valid if:
% - it is not a scalar
% - it is not an integer
% - it is not positive
%
% If the value is not valid, a message is displayed indicating why.
%
% Output: a valid number of jumbles to attempt
%

% Replace the line below with your code.
number = 0;
number = input('Number of jumbles to attempt: ');
done = 0;
while ~done
    if length(number) ~= 1
        disp("Number must be a scalar");
        number = input('Try again: ');
    elseif number <= 0
        disp("Number must be positive");
        number = input('Try again: ');
    elseif rem(number, 1) ~= 0
        disp("Number must be an integer");
        number = input('Try again: ');
    else
        done = 1;
    end
end
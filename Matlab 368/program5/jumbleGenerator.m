%
% Jumble Generator
%
% This is the main script for the Jumble Generator.  
% The comments below outline what the script should do.
% 
clear

% Read in a list of 6-letter words from a file
% Note: do not change this code
fileID = fopen('words_6_ltrs.txt', 'r');
sizeWords = [6, Inf];
words = fscanf(fileID, '%s', sizeWords);
words = words';


% Ask the user for the number of jumbles they wish to attempt
number = getNumJumbles();

solved = 0;
for i = 1:number
    temp = randperm(length(words), 1);
    word = words(temp, 1:6);
    solved = solved + solveOneJumble(word);
end
disp(['# jumbles attempted: ', num2str(number)]);
disp(['# jumbles solved: ', num2str(solved)]);
% For each jumble to attempt
%     select a word at random from the list of words 
%     create a jumble from the word and ask the user to solve it


% Display the number of jumbles attempted and number of jumbles solved
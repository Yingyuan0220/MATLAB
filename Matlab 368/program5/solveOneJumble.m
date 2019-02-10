function solved = solveOneJumble(word)
% solveOneJumble
%
% Takes one argument (the word to guess), creates a jumble out of it, 
% and repeatedly allows the user to guess the word (or quit guessing).
%
% Input:
%   word   the word the user is to guess
%
% Output: true (1) if the jumble was correctly solved; 
%         false (0) otherwise (i.e., the user decided to quit)
%

jumble = word(randperm(6));
solved = -1;
while solved == -1
    disp(jumble);
    guess = input('Enter guess or Q to quit: ', 's');
    if strcmpi(guess, 'q')
        disp(['The word was: ', word]);
        solved = 0;
    elseif checkGuess(guess, word) == 1
        disp('Correct');
        solved = 1;
    end
end

% The comments below outline what this function should do:

% create a jumble out of the word by scrambling the letters
% (making sure that the scrambled word is different than the 
%  original word)

% repeatedly
%     display the jumbled word
%     ask user to guess the correct word (or enter Q to quit)
%     if user made a guess, 
%         check if guess is correct (if it is, display "Correct")
%     if user decided to quit, display the correct word
% until user has either guessed the correct word or decided to quit 

% return true (1) if the jumble was correctly solved 
% or false (0) if user decided to quit before solving it

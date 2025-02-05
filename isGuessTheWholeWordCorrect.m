%The function return a boolean value which is 1 if the User guess the whole
%word correctly, else return 0.

%Both of the inputs are string. 
%The resultWord is always have to be valid which mean contains only letter. 
function [isCorrect] = isGuessTheWholeWordCorrect(resultWord,userInput)
    
    %Check if all the characters in UserInput are letter
    isAllLetter = all(isletter(userInput));

    %Check if the userInput is similar to resultWord 
    if isAllLetter && strcmpi(resultWord,userInput)
        isCorrect = 1;
    else
        isCorrect = 0; 
    end
end
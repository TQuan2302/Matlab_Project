function [guessingWord, lengthOfResultWord] = isWinStage1(resultWord)
    %Define a variable for the length of the result
    lengthOfResultWord = strlength(resultWord); 
    
    %Tell the user how many letters are there in the word
    fprintf("The resultWord contains %d letters\n",lengthOfResultWord);
    
    %Define variable for the unrevealed resultWord. 
    guessingWord = blanks(lengthOfResultWord); 
    
    %Filled into the unrevealed resultWord with *
    for i = 1: length(guessingWord)
        guessingWord(i) = '*'; 
    end
    
    disp(guessingWord); 

    guessingWord = string(guessingWord); 
end
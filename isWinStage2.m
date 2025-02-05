%Stage2: 
%guessingArray: an array contains all the letter that the user has entered
%but not in the resultWord
function [chance,countGraph,result, guessingArray] = isWinStage2(resultWord)
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

    
    %Stage 2 from here: 
    
    %Define chance variable to count how many times user enter a character that
    %is not in the resultWord
    chance = 14;

    %Define countGraph variable to detemine which graph to print out when
    %the user enter a character that is not in the word
    countGraph = 1; 
    
    %result of the game, 0 is lose, 1 is win
    result = 0; 
    
    %Create an array for characters that user has guess. 
    guessingArray = []; 
end
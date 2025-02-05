%Display status funtion print out number of chances left of the user,
%The guessingWord, all the character the user has entered but not in the
%resultWord or the word that the user guess incorrectly

function [] = displayStatus(chance, guessingWord, guessingArray)
    fprintf("\n"); 
    fprintf("chance left:\t\t\t\t"); 
    fprintf("The Word:\t\t\t"); 
    fprintf("Wrong Character/Word:\t\t\t\n"); 

    fprintf("%d\t\t\t\t\t\t\t",chance); 
    fprintf("%s\t\t\t\t\t",guessingWord); 
    
    %fprintf("\n\n");
    %Print out an array of character that is not in the word
    fprintf("["); 
    for i = 1: length(guessingArray)
        fprintf("%s ",guessingArray(i)); 
    end
    fprintf("]\n");
    fprintf("\n");
end

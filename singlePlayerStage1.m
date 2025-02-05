function [] = singlePlayerStage1(difficulty)
    %Stage 1: 
    fprintf("*******************************************************************\n");
    fprintf("========================SINGLE PLAYER MODE=========================\n");
    fprintf("*******************************************************************\n");

    %Call getWord function and store the result into resultWord variable.
    [index,resultWord] = getWord(difficulty); 
    
    %Call rule function to print out the rule of the game
    singlePlayerRule();  

    fprintf("The word for the user to guess is: %s, index %d",resultWord,index); 
end
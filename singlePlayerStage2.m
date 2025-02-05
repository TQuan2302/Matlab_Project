function [result] = singlePlayerStage2(difficulty)
    %Stage 1: 
    fprintf("*******************************************************************\n");
    fprintf("========================SINGLE PLAYER MODE=========================\n");
    fprintf("*******************************************************************\n");

    %Call getWord function and store the result into resultWord variable.
    [index,resultWord] = getWord(difficulty); 
    
    %Call rule function to print out the rule of the game
    singlePlayerRule();  

    %Stage 2: 
    fprintf("\n"); 

    
    %Call the function contains the main content of the game
    %if user win then result = 1, else result = 0
    %use resultWord as input for isWin()
    result = isWin(resultWord);
    
    %For testing:
    fprintf("result: %d",result); 

end
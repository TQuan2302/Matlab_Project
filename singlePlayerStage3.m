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
    %Use resultWord as input for isWin()
    result = isWin(resultWord);

    %Stage 3:
    %If else statement to print out the annoucement about the result of the
    %game
    if result
        fprintf("\nYou win\n");
    else
        fprintf("\nYou lose\n"); 
    end
    fprintf("The word is: %s",resultWord);

end
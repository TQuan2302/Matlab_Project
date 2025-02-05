function [] = singlePlayer(difficulty)

    fprintf("*******************************************************************\n");
    fprintf("========================SINGLE PLAYER MODE=========================\n");
    fprintf("*******************************************************************\n");

    %Call getWord function and store the result into resultWord variable.
    [index,resultWord] = getWord(difficulty); 
    
    %Call rule function to print out the rule of the game
    singlePlayerRule();  
    
    
    fprintf("\n"); 
    
    %Call the function contains the main content of the game
    %if user win then result = 1, else result = 0
    result = isWin(resultWord);

    if result
        fprintf("\nYou win\n");
    else
        fprintf("\nYou lose\n"); 
    end
    fprintf("The word is: %s",resultWord);
end
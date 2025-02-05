%a function for 2 players mode
function [] = twoPlayer()

    fprintf("##############################################################\n");
    fprintf("========================TWO PLAYERS MODE======================\n");
    fprintf("##############################################################\n");
    
    fprintf("\n"); 
    twoPlayerRule(); 
    dlgtitle = 'SecretWord';
    secretWord = inputdlg('Enter the secretWord',dlgtitle);
    
    %Prompt the user to enter again if the input is not valid
    while ~isTheWholeWordValid(secretWord)
        fprintf("Input is not valid, please enter again\n");
        secretWord = inputdlg("Please enter the secret word: ");
    end
    
    %convert the input into string:
    secretWord = string(secretWord{1,1});
    
    result = isWin(secretWord);

    %if result is 1 then the 2nd player can guess what the word is 
    if result 
        fprintf("\n2nd user win\n");
    %Else the first player win. 
    else
        fprintf("\n1st user win\n"); 
    end
    fprintf("The word is %s\n", secretWord);
end
function [] = twoPlayerStage3()
    %Stage 1:
    fprintf("##############################################################\n");
    fprintf("========================TWO PLAYERS MODE======================\n");
    fprintf("##############################################################\n");
    
    fprintf("\n"); 

    %Print out the rule
    twoPlayerRule(); 

    %Stage 2: 
    %Create a dialogue box for user to enter their word
    dlgtitle = 'SecretWord';
    secretWord = inputdlg('Enter the secretWord',dlgtitle);
    
    %Prompt the user to enter again if the input is not valid
    while ~isTheWholeWordValid(secretWord)
        fprintf("Input is not valid, please enter again\n");
        secretWord = inputdlg("Please enter the secret word: ");
    end

    %Get the element in row 1 column 1 of the cell array
    secretWord = strtrim(string(secretWord{1,1}));  

    %Call the isWin() function
    result = isWin(secretWord);
    
    %Stage 3:
    %if result is 1 then the 2nd player can guess what the word is 
    if result 
        fprintf("\n2nd user win\n");
    %Else the first player win. 
    else
        fprintf("\n1st user win\n"); 
    end
    fprintf("The word is %s\n", secretWord);
    
end
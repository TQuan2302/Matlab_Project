clc;
clear all; 

%Define a variable to check if the user want to continue to play or not
isContinue = 1; 

%Intro of the game
fprintf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
fprintf("=======================HANGMAN GAME==========================\n");
fprintf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");

fprintf("\n"); 

%A loop until the user don't want to continue to play
while isContinue
    fprintf("Please choose 1 of 3 option below:\n")
    gameMode = input("Single Player-1, 2 Players-2, quit-3: ","s"); 

    while ~isStringANumber(gameMode) || str2double(gameMode) ~=1 && str2double(gameMode) ~=2 && str2double(gameMode) ~=3 
        gameMode = input("Invalid Game Mode, please enter again: ","s"); 
    end
    
    %Convert gameMode to Double
    gameMode = str2double(gameMode); 

    %if User enter 1 then user play Single Player mode
    if gameMode == 1
        fprintf("Easy Mode - 1, Hard Mode - 2\n");
        difficulty = input("Please enter the difficulty: ","s");

        while ~isStringANumber(difficulty) ||  str2double(difficulty) ~=1 && str2double(difficulty) ~=2 
            difficulty = input("Invalid difficulty, please enter again: ","s"); 
        end
        singlePlayer(str2double(difficulty));
    %if User enter 2 then user play Two Player mode    
    elseif gameMode == 2
        twoPlayer();
    %if User enter 3 then user want to quit the game    
    elseif gameMode == 3
        endGame(); 
        fprintf("The program quit successfully\n");
        isContinue = 0; 
        break; 
    end
    
    fprintf("\n"); 
    fprintf("Do you want to continue to play\n");
    fprintf("if Yes, enter: 1\n");
    fprintf("If you want to quit, enter: 0\n");

    isContinue = input("Please enter a number: ","s");
    
    %Check if the user input is valid or not ( is a number 1 - 0 or not)
    while ~isStringANumber(isContinue) || str2double(isContinue) ~=1 && str2double(isContinue) ~=0
        isContinue = input("Invalid number, please enter again: ","s"); 
    end

    %Convert the string to number
    isContinue = str2double(isContinue); 

    %Check if the user want to continue the game
    if ~isContinue
        endGame(); 
        fprintf("The game quit successfully\n"); 
    end
end


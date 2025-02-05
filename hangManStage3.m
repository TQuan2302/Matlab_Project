%Stage 1: 
clc;
clear all; 

%Define a variable to check if the user want to continue to play or not
isContinue = 1; 

%Intro of the game
fprintf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
fprintf("=======================HANGMAN GAME==========================\n");
fprintf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");

fprintf("\n"); 

%Stage 2: 
fprintf("Please choose 1 of 3 option below:\n")
gameMode = input("Single Player-1, 2 Players-2, quit-3: ","s"); 

while ~isStringANumber(gameMode) || str2double(gameMode) ~=1 && str2double(gameMode) ~=2 && str2double(gameMode) ~=3
    gameMode = input("Invalid Game Mode, please enter again: ","s"); 
end
    
%Convert gameMode to Double
while isContinue
    fprintf("Please choose 1 of 3 option below:\n")
    gameMode = input("Single Player-1, 2 Players-2, quit-3: ","s"); 

    while ~isStringANumber(gameMode) || str2double(gameMode) ~=1 && str2double(gameMode) ~=2 && str2double(gameMode) ~=3 
        gameMode = input("Invalid Game Mode, please enter again: ","s"); 
    end
    
    %Stage 3: 
    
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
end
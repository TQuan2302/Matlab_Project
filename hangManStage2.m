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
    
    %For testing
    break; 
end
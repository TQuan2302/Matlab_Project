clc; 
clear all; 
%Test if the user enter a valid letter but not in the resultWord
%then the function work or not.

%If the user enter a valid letter but not in the result word then:
%Add the letter into guessingArray to print out which letter the user guess incorrectly.
%Print out the graph of the hangman.
%Add 1 to countGraph variable
%Decrease chance by 1. 


%Test case1:
fprintf("Test case 1\n");
resultWord = "Count";
fprintf("Input: %s\n",resultWord);

%Expected Output if user enter 'g'
fprintf("Expected Output if user enter g: \n");
fprintf("The resultWord contains %d letters",strlength(resultWord));
disp(blanks(strlength(resultWord)));
array = '*****';
displayStatus(13,array,["g"]);

%Actual Output if user enter 'g'
fprintf("\n");
fprintf("Actual Output\n"); 
%Actual Output
isWinStage4(resultWord);

fprintf("\n\n\n");

%Test case 2: 
fprintf("Test case 2\n");

%Expected Output if user enter 'k'
fprintf("Expected Output if user enter k: \n");
fprintf("The resultWord contains %d letters",strlength(resultWord));
disp(blanks(strlength(resultWord)));
array = '*****';
displayStatus(13,array,["k"]);

%Actual Output if user enter 'c'
fprintf("\n");
fprintf("Actual Output\n"); 
%Actual Output
isWinStage4(resultWord);
































































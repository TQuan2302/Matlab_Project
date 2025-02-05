clc;
clear all; 
%Check if-else of the wholeWord feature work or not

%If the user guess the wholeWord correctly then the user win, print out
%result = 1

%Else:
%Add the word into guessingArray to print out which letter the user guess incorrectly.
%Print out the graph of the hangman.
%Add 1 to countGraph variable
%Decrease chance by 1. 
%Print out the status of user: how many chances, incorrect word,...
%Print out result = 0

%Test case 1: The user Win with guess the wholeWord.
fprintf("Test case 1\n");
resultWord = "Count";
fprintf("The Word is: %s\n",resultWord); 
fprintf("resultWord: %s\n",resultWord);


fprintf("If the user enter 'Count' into the dialogue box \n\n");


fprintf("Expected Output: \n");
fprintf("The resultWord contains 5 letters\n"); 
fprintf("*****");
fprintf("\n\n");
fprintf("What is your letter/word?:\n")
fprintf("wholeWord\n");
fprintf("The word is: %s\n", resultWord); 
fprintf("result is: %d",1); 

fprintf("\n\n");
fprintf("Actual Output: \n");
isWinStage7(resultWord);

fprintf("\n\n"); 





%Test case 2: The user guess the word incorrectly
fprintf("Test case 1\n");
fprintf("If the user enter 'someword' into the box\n");
resultWord = "Count";
fprintf("Expected output: \n");
fprintf("The resultWord contains 5 letters\n");
fprintf("*****\n");
fprintf("\n")
fprintf("What is your letter/word?:\n");
fprintf("wholeWord\n");
fprintf("The word is: %s","someWord\n");
fprintf("The word is incorrect\n\n");

displayStatus(13,"*****",["someword"]); 

fprintf("\n\n");
fprintf("Actual Output: \n");
isWinStage7(resultWord);

fprintf("\n\n"); 
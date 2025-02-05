clc;
clear all; 

%Add new feature to the game: cancle option the wholeWord feature 
%When the user change their mind, they can enter 'cancle' into the dialogue
%box to exit .

%Test case : The user enter wholeWord and then want to cancle.
fprintf("Test case 1\n");
resultWord = "Count";

fprintf("Expected output: \n");
fprintf("The resultWord contains 5 letters\n");
fprintf("*****\n");
fprintf("\n")
fprintf("What is your letter/word?:\n");
fprintf("wholeWord\n");
fprintf("Cancle successfully\n");

fprintf("\n");
%Actual Output:
fprintf("Actual output:\n"); 
isWinStage8(resultWord);

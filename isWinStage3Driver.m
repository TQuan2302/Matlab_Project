clc; 
clear all; 
%Test if the function can substitute the character into the guessingWord in its correct position 
%If the user guess the letter correct 

%Test case1:
fprintf("Test case 1\n");
resultWord = "Count";
fprintf("Input: %s\n",resultWord);

%Expected Output if user enter 'c'
fprintf("Expected Output if user enter c: \n");
fprintf("The resultWord contains %d letters",strlength(resultWord));
disp(blanks(strlength(resultWord)));
array = 'C****';
displayStatus(14,array,[]);

%Actual Output if user enter 'c'
fprintf("\n");
fprintf("Actual Output\n"); 
%Actual Output
isWinStage3(resultWord);

fprintf("\n\n\n");

%Test case 2: 
fprintf("Test case 2\n");

%Expected Output if user enter 't'
fprintf("Expected Output if user enter t: \n");
fprintf("The resultWord contains %d letters",strlength(resultWord));
disp(blanks(strlength(resultWord)));
array = '****t';
displayStatus(14,array,[]);

%Actual Output if user enter 'c'
fprintf("\n");
fprintf("Actual Output\n"); 
%Actual Output
isWinStage3(resultWord);
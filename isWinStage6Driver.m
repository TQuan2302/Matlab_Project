clc; 
clear all; 
%Add new feature to the game: wholeWord feature.
%The feature let the user enter the whole word at once if they know it.

%Whenever they want to guess the whole word instead of a single letter,
%they enter the word: "wholeWord" then the dialogue box pop up, then they
%enter their word into the box.

%Driver Stage 6 check if the function can get user input by dialogue box 
%test user input for the dialogue box is valid or not.

%the input has to be a word which contains only alphabetical letters
%If valid then print the input, else prompt the user to enter again. 



%Test case 1: a valid user input.
fprintf("Test case 1\n");
resultWord = "Count";
fprintf("resultWord: %s\n",resultWord);

fprintf("Expected output: \n");
%input: "Banana", if user enter "Banana" then it is valid
fprintf("The word is %s", "Banana"); 

fprintf("\n\n");

fprintf("Actual Output: \n");
isWinStage6(resultWord);

fprintf("\n\n");



%Test case 2: Invalid input - contains character that is not alphabetical
%letter
fprintf("Test case 2 - contains character that is not alphabetical\n");
resultWord = "Count";
fprintf("resultWord: %s\n",resultWord);

fprintf("Expected output: \n");
%input: "hell@@!!", if user enter "hell@@!!" then it is invalid, after that
%enter a valid input: "Banana" and then print out "The word is Banana".
fprintf("What is your letter/word?: \n");
fprintf("wholeWord\n");
fprintf("Input is not valid, please enter again:\n"); 
fprintf("The word is %s\n","Banana"); 

fprintf("\n\n");

fprintf("Actual Output: \n");
isWinStage6(resultWord);


fprintf("\n\n");


%Test case 3: Invalid input - contains only 1 valid character
%letter
fprintf("Test case 3 - contains only 1 valid character\n");
resultWord = "Count";
fprintf("resultWord: %s\n",resultWord);

fprintf("Expected output: \n");
%input: "h", if user enter "h" then it is invalid, after that
%enter a valid input: "Banana" and then print out "The word is Banana".
fprintf("What is your letter/word?: \n");
fprintf("wholeWord\n");
fprintf("Input is not valid, please enter again:\n"); 
fprintf("The word is %s\n","Banana"); 

fprintf("\n\n");

fprintf("Actual Output: \n");
isWinStage6(resultWord);


fprintf("\n\n");

%Test case 4: Invalid input - the user does not enter any
%letter
fprintf("Test case 4 - the user does not enter anything\n");
resultWord = "Count";
fprintf("resultWord: %s\n",resultWord);

fprintf("Expected output: \n");
%input: "", if user enter "" then it is invalid, after that
%enter a valid input: "Banana" and then print out "The word is Banana".
fprintf("What is your letter/word?: \n");
fprintf("wholeWord\n");
fprintf("Input is not valid, please enter again:\n"); 
fprintf("The word is %s\n","Banana"); 

fprintf("\n\n");

fprintf("Actual Output: \n");
isWinStage6(resultWord);



fprintf("\n\n");



%Test case 5: Invalid input - the user enter two word with a 'space'
%between

fprintf("Test case 5 - the user enter two word with a 'space' between\n");
resultWord = "Count";
fprintf("resultWord: %s\n",resultWord);

fprintf("Expected output: \n");
%input: "Banana Apple", if user enter "Banana Apple" then it is invalid, after that
%enter a valid input: "Banana" and then print out "The word is Banana".
fprintf("What is your letter/word?: \n");
fprintf("wholeWord\n");
fprintf("Input is not valid, please enter again:\n"); 
fprintf("The word is %s\n","Banana"); 

fprintf("\n\n");

fprintf("Actual Output: \n");
isWinStage6(resultWord);
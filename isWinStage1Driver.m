clc;
clear all; 
%Test if the function can create the result word in the '***' form or
%not and test the length of the guessingWord is equal to resultWord or not
%Test case 1: 

input = "tree"; 
[guessingWord, lengthOfResultWord] = isWinStage1(input);


if strcmp( guessingWord, "****") && lengthOfResultWord == strlength(input) 
    fprintf("Function is working as expected\n");
    fprintf("Input: %s\n", input);
    fprintf("Expected output: -Asterisk form: %s, Length of the word: %d\n","****", strlength(input));
    fprintf("Actual output: -Asterisk form: %s, Length of the word: %d\n", guessingWord,lengthOfResultWord);
else
    fprintf("The function is not working as expected"); 
end


fprintf("\n\n"); 

%Test case 2: 
input = "School"; 
[guessingWord, lengthOfResultWord] = isWinStage1(input);


if strcmp( guessingWord, "******") && lengthOfResultWord == strlength(input) 
    fprintf("Function is working as expected\n");
    fprintf("Input: %s\n", input);
    fprintf("Expected output: -Asterisk form: %s, Length of the word: %d\n","******", strlength(input));
    fprintf("Actual output: -Asterisk form: %s, Length of the word: %d\n", guessingWord,lengthOfResultWord);
else
    fprintf("The function is not working as expected"); 
end


fprintf("\n\n"); 

%Test case 3: 
input = "concatenate"; 
[guessingWord, lengthOfResultWord] = isWinStage1(input);


if strcmp( guessingWord, "***********") && lengthOfResultWord == strlength(input) 
    fprintf("Function is working as expected\n");
    fprintf("Input: %s\n", input);
    fprintf("Expected output: -Asterisk form: %s, Length of the word: %d\n","******", strlength(input));
    fprintf("Actual output: -Asterisk form: %s, Length of the word: %d\n", guessingWord,lengthOfResultWord);
else
    fprintf("The function is not working as expected"); 
end
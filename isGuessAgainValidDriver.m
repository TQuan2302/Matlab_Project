clc;
clear all; 

array = ["hello", "someWord","test", "a"]; 
%Test case 1: Invalid input - enter a word
input = "testInput"; 
fprintf("Test case 1\n");
isValid = isGuessAgainValid(input,array);
fprintf("The input is: %s\n",input);
fprintf("The guessingArray is: \n");
disp(array);


fprintf("Expected value: %d\n",0); 
fprintf("Actual Output: %d\n",isValid);

fprintf("\n\n"); 

%Test case 2: Invalid input - enter a character that is not in the
%alphabet.
fprintf("Test case 2\n");
input = "#"; 
isValid = isGuessAgainValid(input,array);
fprintf("The input is: %s\n",input);
fprintf("The guessingArray is: \n");
disp(array);

fprintf("Expected value: %d\n",0); 
fprintf("Actual Output: %d\n",isValid);

fprintf("\n\n");

%Test case 3: Invalid input - enter a space
fprintf("Test case 3\n");
input = " "; 
isValid = isGuessAgainValid(input,array);
fprintf("The input is: %s\n",input);
fprintf("The guessingArray is: \n");
disp(array);


fprintf("Expected value: %d\n",0); 
fprintf("Actual Output: %d\n",isValid);


fprintf("\n\n");

%Test case 4: Invalid input - enter a word contain letters that are not in
%the alphabet
fprintf("Test case 4\n");
input = "Hell@@!#!"; 
isValid = isGuessAgainValid(input,array);
fprintf("The input is: %s\n",input);
fprintf("The guessingArray is: \n");
disp(array);


fprintf("Expected value: %d\n",0); 
fprintf("Actual Output: %d\n",isValid);

fprintf("\n\n");


%Test case 5: Invalid input - enter a character in the alphabet but has
%already in the guessingArray.
fprintf("Test case 5\n");
input = "a"; 
isValid = isGuessAgainValid(input,array);
fprintf("The input is: %s\n",input);
fprintf("The guessingArray is: \n");
disp(array);


fprintf("Expected value: %d\n",0); 
fprintf("Actual Output: %d\n",isValid);

fprintf("\n\n");


%Test case 6: valid input - enter a character in the alphabet but not in
%the guessingArray
fprintf("Test case 6\n");
input = "P"; 
isValid = isGuessAgainValid(input,array);
fprintf("The input is: %s\n",input);
fprintf("The guessingArray is: \n");
disp(array);


fprintf("Expected value: %d\n",1); 
fprintf("Actual Output: %d\n",isValid);




%Test case 7: valid input - enter a character in the alphabet, in
%the guessingArray but in another case (For example if the one in
%guessingArray is upper case then test lower case).
fprintf("Test case 7\n");
input = "p"; 
isValid = isGuessAgainValid(input,array);
fprintf("The input is: %s\n",input);
fprintf("The guessingArray is: \n");
disp(array);


fprintf("Expected value: %d\n",1); 
fprintf("Actual Output: %d\n",isValid);


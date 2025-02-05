clc;
clear all; 
%Since the function isTheWholeWordValid() is used before calling
%isGuessTheWholeWordCorrect() so we don't need to worry about the type of
%input. 

%The input is always a valid word.


resultWord = "Banana"; 

%Test case 1: User guess Incorrectly
userInput = "Apple"; 

fprintf("Test case 1:\n\n"); 
fprintf("The input is %s\n",userInput);
fprintf("The word is: %s\n",resultWord); 
isCorrect = isGuessTheWholeWordCorrect(resultWord, userInput); 

fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n",isCorrect); 

fprintf("\n\n"); 


%Test case 2: User guess Correctly
resultWord = "Banana"; 
userInput = "Banana"; 

fprintf("Test case 2:\n\n"); 
fprintf("The input is %s\n",userInput);
fprintf("The word is: %s\n",resultWord); 
isCorrect = isGuessTheWholeWordCorrect(resultWord, userInput); 

fprintf("Expected output: %d\n",1);
fprintf("Actual Output: %d\n",isCorrect); 

fprintf("\n\n"); 




%Test case 3: User guess Correctly but some character in the input is upper
%case
resultWord = "Banana"; 
userInput = "BaNAna"; 

fprintf("Test case 3:\n\n"); 
fprintf("The input is %s\n",userInput);
fprintf("The word is: %s\n",resultWord); 
isCorrect = isGuessTheWholeWordCorrect(resultWord, userInput); 

fprintf("Expected output: %d\n",1);
fprintf("Actual Output: %d\n",isCorrect); 

fprintf("\n\n"); 
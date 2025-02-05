clc;
clear all; 
%Since replaceChar() is always called after isGuessAgainValid() so the
%input for replace char always valid.

%Test case 1:  Enter a letter appear multiple time in the word
fprintf("Test case 1: \n\n"); 
guessingWord ='*****' ;
%The word that user need to guess. 
result = 'trees'; 
userInput = "e"; 

fprintf("GuessingWord is: %s\n",guessingWord);
fprintf("result is: %s\n",result);
fprintf("User input is: %s\n",userInput);     

testCharArray = replaceChar(guessingWord, result,userInput);
fprintf("Expected output: \n");
disp("**ee*");
fprintf("Actual Output:\n");
disp(testCharArray); 


fprintf("\n\n"); 


%Test case 2: Enter a letter appear 1 time in the word
fprintf("Test case 2: \n\n"); 
guessingWord ='********' ;
%The word that user need to guess. 
result = 'someWord'; 
userInput = "d"; 

fprintf("GuessingWord is: %s\n",guessingWord);
fprintf("result is: %s\n",result);
fprintf("User input is: %s\n",userInput);     

testCharArray = replaceChar(guessingWord, result,userInput);
fprintf("Expected output: \n");
disp("*******d");
fprintf("Actual Output:\n");
disp(testCharArray); 


fprintf("\n\n"); 



%Test case 3: Enter a letter appear multiple time in the word
fprintf("Test case 3: \n\n"); 
guessingWord ='s**e***d' ;
%The word that user need to guess. 
result = 'someWord'; 
userInput = "o"; 

fprintf("GuessingWord is: %s\n",guessingWord);
fprintf("result is: %s\n",result);
fprintf("User input is: %s\n",userInput);     

testCharArray = replaceChar(guessingWord, result,userInput);
fprintf("Expected output: \n");
disp("so*e*o*d");
fprintf("Actual Output:\n");
disp(testCharArray); 


fprintf("\n\n"); 




%Test case 4: Enter a letter that has already revealed
fprintf("Test case 4: \n\n"); 
guessingWord ='s**e***d' ;
%The word that user need to guess. 
result = 'someWord'; 
userInput = "e"; 

fprintf("GuessingWord is: %s\n",guessingWord);
fprintf("result is: %s\n",result);
fprintf("User input is: %s\n",userInput);     

testCharArray = replaceChar(guessingWord, result,userInput);
fprintf("Expected output: \n");
disp("s**e***d");
fprintf("Actual Output:\n");
disp(testCharArray); 


fprintf("\n\n"); 




%Test case 5: Enter a letter that is not in the word
fprintf("Test case 5: \n\n"); 
guessingWord ='s**e***d' ;
%The word that user need to guess. 
result = 'someWord'; 
userInput = "k"; 

fprintf("GuessingWord is: %s\n",guessingWord);
fprintf("result is: %s\n",result);
fprintf("User input is: %s\n",userInput);     

testCharArray = replaceChar(guessingWord, result,userInput);
fprintf("Expected output: \n");
disp("s**e***d");
fprintf("Actual Output:\n");
disp(testCharArray); 


fprintf("\n\n"); 


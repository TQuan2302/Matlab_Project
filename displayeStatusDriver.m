clc;
clear all;
%Test case 1:
chance = 10; 
testGuessingWord = "test"; 
testArray = ["1","2","3","4"];


fprintf("Expected output: \n");
fprintf("chance left:				The Word:			Wrong Character/Word:\n");			
fprintf("10							test					[1 2 3 4 ]\n");

fprintf("Actual Output: \n");

displayStatus(chance,testGuessingWord, testArray); 



fprintf("\n\n");

%Test case 2:
chance = 20; 
testGuessingWord = "test2"; 
testArray = ["word1","word2","word3"];


fprintf("Expected output: \n");
fprintf("chance left:				The Word:			Wrong Character/Word:\n");			
fprintf("10							test2					[word1 word2 word3 ]\n");

fprintf("Actual Output: \n");

displayStatus(chance,testGuessingWord, testArray); 


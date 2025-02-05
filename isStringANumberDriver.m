clc;
clear all; 

%Test case 1: Input is a valid number but in a form of string:
fprintf("Test case 1: \n");
testString = "123"; 
fprintf("Input: %s\n",testString);
isNumber = isStringANumber(testString);

fprintf("Expected output: %d\n",1);
fprintf("Actual Output: %d\n",isNumber);


fprintf("\n\n");

%Test case 2: Input is a string contain number and other character
fprintf("Test case 2: \n");
testString = "123test"; 
fprintf("Input: %s\n",testString);
isNumber = isStringANumber(testString);

fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n",isNumber);



fprintf("\n\n");

%Test case 3: Input is a word without any number
fprintf("Test case 3: \n");
testString = "test"; 
fprintf("Input: %s\n",testString);
isNumber = isStringANumber(testString);

fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n",isNumber);

fprintf("\n\n"); 

%Test case 4: Input is a space
fprintf("Test case 4: \n");
testString = " "; 
fprintf("Input: %s\n",testString);
isNumber = isStringANumber(testString);

fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n",isNumber);

fprintf("\n\n"); 

%Test case 5: Input is 2 or more numbers seperate by a space
fprintf("Test case 5: \n");
testString = "123 456 789"; 
fprintf("Input: %s\n",testString);
isNumber = isStringANumber(testString);

fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n",isNumber);

fprintf("\n\n"); 

%Test case 6: Input is a number but has spaces before and after
fprintf("Test case 6: \n");
testString = "       123    "; 
fprintf("Input: %s\n",testString);
isNumber = isStringANumber(testString);

fprintf("Expected output: %d\n",1);
fprintf("Actual Output: %d\n",isNumber);

fprintf("\n\n"); 

%Test case 7: Input is string contains both number and characters
fprintf("Test case 7: \n");
testString = "  test     123    "; 
fprintf("Input: %s\n",testString);
isNumber = isStringANumber(testString);

fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n",isNumber);







































































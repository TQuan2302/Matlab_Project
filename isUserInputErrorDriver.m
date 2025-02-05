clc;
clear all; 

%Test case 1: Invalid Input - a character not in the alphabet 
fprintf("Test case 1: \n\n"); 
input = "!";
isValid = isUserInputError(input);

fprintf("Input is %s\n",input);
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);


%Test case 2: Invalid Input - more than 1 character
fprintf("Test case 2: \n\n"); 
input = "moreThanOneCharacter";
isValid = isUserInputError(input);

fprintf("Input is %s\n",input);
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);


%Test case 3: Invalid Input - more than 1 character with characters not in
%the alphabet
fprintf("Test case 3: \n\n"); 
input = "moreThanOneCharacter@@@";
isValid = isUserInputError(input);

fprintf("Input is %s\n",input);
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);




%Test case 4: Invalid Input - more than 1 character with spaces
fprintf("Test case 4: \n\n"); 
input = "moreThanOneCharacter  someCharacter";
isValid = isUserInputError(input);

fprintf("Input is %s\n",input);
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);


%Test case 5: Invalid Input - contains space only
fprintf("Test case 5: \n\n"); 
input = "        ";
isValid = isUserInputError(input);

fprintf("Input is %s\n",input);
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);





%Test case 6: valid Input - contains space only 1 character in the alphabet
fprintf("Test case 6: \n\n"); 
input = "a";
isValid = isUserInputError(input);

fprintf("Input is %s\n",input);
fprintf("Expected output: %d\n",1);
fprintf("Actual Output: %d\n\n",isValid);




%Test case 7: valid Input - contains space only 1 character in the alphabet
%but in uppercase
fprintf("Test case 7: \n\n"); 
input = "A";
isValid = isUserInputError(input);

fprintf("Input is %s\n",input);
fprintf("Expected output: %d\n",1);
fprintf("Actual Output: %d\n\n",isValid);







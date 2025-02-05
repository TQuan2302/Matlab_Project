clc;
clear all; 

%Since the input of isTheWholeWordValid() is a return value from a dialogue
%box so the input is a cell array.

%Test case 1: Invalid Input - a cell array that have row and column more than 1 
fprintf("Test case 1: \n\n"); 
testCellArray = {"text1","text2","text3";"text4","text5","text6"}; 
isValid = isTheWholeWordValid(testCellArray);

fprintf("Input is a cell array:\n{1,2,3;'text1','text2','text3'}\n");
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);



%Test case 2: valid Input - a cell array that have row and column equal 1
%and the element at index 1-1 contains only alphabet letter

fprintf("Test case 2: \n\n"); 
testCellArray = {"someWord"};
isValid = isTheWholeWordValid(testCellArray);

fprintf("Input is a cell array:\n{'someWord'}\n");
fprintf("Expected output: %d\n",1);
fprintf("Actual Output: %d\n\n",isValid);




%Test case 3: Invalid Input - a cell array that have row and column equal 1
%but the element at index 1-1 contains characters that are not in the
%alphabet

fprintf("Test case 3: \n\n"); 
testCellArray = {"someWord@@"};
isValid = isTheWholeWordValid(testCellArray);

fprintf("Input is a cell array:\n{'someWord@@'}\n");
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);







%Test case 4: Invalid Input - a cell array that have row and column equal 1
%but the element at index 1-1 contains valid letters and space.

fprintf("Test case 4: \n\n"); 
testCellArray = {"someWord  someWord2"};
isValid = isTheWholeWordValid(testCellArray);

fprintf("Input is a cell array:\n{'someWord  someWord2'}\n");
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);





%Test case 5: Invalid Input - a cell array that have row and column equal 1
%but the element at index 1-1 contains spaces only

fprintf("Test case 5: \n\n"); 
testCellArray = {"          "};
isValid = isTheWholeWordValid(testCellArray);

fprintf("Input is a cell array:\n{'          '}\n");
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);




%Test case 6: Invalid Input - a cell array that have row and column equal 1
%but the element at index 1-1 is vacant (Which mean the user does not
%enter anything in the dialogue box)

fprintf("Test case 6: \n\n"); 
testCellArray = {""};
isValid = isTheWholeWordValid(testCellArray);

fprintf("Input is a cell array:\n{''}\n");
fprintf("Expected output: %d\n",0);
fprintf("Actual Output: %d\n\n",isValid);

clc;
clear all; 

%Test case : Test if the default value of chance, countGraph, resuslt,guessingArray is 14,1,0,0 respectively or not 
input = "HelloWord"; 
[chance,countGraph,result, guessingArray] = isWinStage2(input);

if chance==14 && countGraph == 1 && result == 0 && isempty(guessingArray)
    fprintf("The function is working as expected\n");
    fprintf("Expected output: \n");
    fprintf("-Default value of chance: %d\n-Default value of countGraph: %d," + ...
        "\n-Default value of result: %d\n-Default value of guessingArray: %d\n\n", ...
        14,1,0,0);
    fprintf("Actual Output:\n");
    fprintf("")
    fprintf("-Default value of chance: %d\n-Default value of countGraph: %d," + ...
        "\n-Default value of result: %d\n-Default value of guessingArray: %d\n\n", ...
        chance,countGraph,result,length(guessingArray));

end



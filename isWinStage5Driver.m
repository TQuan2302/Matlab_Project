clc; 
clear all; 
%Test the function is work or not if the guess all the letter in resultWord correctly before runs out of chance 
%If the user can guess all the letter in resultWord correctly before runs out of chance: Print 1 which mean the user win.
%Else : Print 0 which mean the user lose

%Test case1: The user Win,make some mistake and some error in input
fprintf("Test case 1\n");
resultWord = "Count";
fprintf("resultWord: %s\n",resultWord);


fprintf("If user input is follow the order: g ->  safafs-> u-> p->  x->  c->  t->  f->  f->  count-> o -> n \n");

fprintf("Expected Output: \n");
displayStatus(10,"Count",["g", "p", "x", "f"]);
fprintf("result is: %d",1); 

fprintf("\n");
fprintf("Actual Output: \n");
isWinStage5(resultWord);

fprintf("\n\n"); 
%Test case 2: The user lose ,make some mistake and some error in input

fprintf("Test case 2\n");
resultWord = "Count";
fprintf("resultWord: %s\n",resultWord);


fprintf("If user input is follow the order:c-> d-> e-> f-> g-> y-> t-> i-> u-> p-> m-> , -> a -> s ->z -> x -> v -> b  \n");

fprintf("Expected Output: \n");
displayStatus(0,"C*u*t",["d", "e", "f", "g", "y", "i", "p","m","a","s","z","x","v","b"]);
fprintf("result is: %d",1); 

fprintf("\n");
fprintf("Actual Output: \n");
isWinStage5(resultWord);

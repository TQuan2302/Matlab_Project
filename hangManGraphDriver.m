clc; 
clear all;

fprintf("Expected Output: all function from graph1() to graph14() are executed and print out the hang man graph\n"); 
fprintf("Actual output: \n");

for i = 1:14
    hangManGraph(i);
    fprintf("Graph%i() has been executed\n",i);
end


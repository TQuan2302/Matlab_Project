function [result] = isWinStage4(resultWord)
%Define a variable for the length of the result
    lengthOfResultWord = strlength(resultWord); 
    
    %Tell the user how many letters are there in the word
    fprintf("The resultWord contains %d letters\n",lengthOfResultWord);
    
    %Define variable for the unrevealed resultWord. 
    guessingWord = blanks(lengthOfResultWord); 
    
    %Filled into the unrevealed resultWord with *
    for i = 1: length(guessingWord)
        guessingWord(i) = '*'; 
    end
    
    disp(guessingWord); 

    
    %Stage 2 from here: 
    
    %Define chance variable to count how many times user enter a character that
    %is not in the resultWord
    chance = 14;

    %Define countGraph variable to detemine which graph to print out when
    %the user enter a character that is not in the word
    countGraph = 1; 
    
    %result of the game, 0 is lose, 1 is win
    result = 0; 
    
    %Create an array for characters that user has guess. 
    guessingArray = [];

    %Stage 3 from here: 
    %Loop until no chance left
    while chance > 0
        %Ask the user for the character
        userInput = input("\nWhat is your letter/word?:\n","s");       
        
        while ~isGuessAgainValid(userInput, guessingArray)
            fprintf("Your input is not valid or the character has already been entered\n");
            userInput = input("Please enter again: ","s");
        end
       
        
            
        %if userInput is in the resultWord then substitude the character into the
        %resultWord and display it
        if contains(resultWord,userInput,'IgnoreCase',true)
            guessingWord = replaceChar(guessingWord, resultWord, userInput);
            displayStatus(chance, guessingWord, guessingArray); 
            
        %Stage 4 from here:
        %if the userInput is not in the resultWord then chance of the user decrease 1
        %and then print the graph of the hangman. 
        else
            %Add the userInput into guessingArray
            guessingArray = [guessingArray, userInput]; 
            hangManGraph(countGraph);
            countGraph = countGraph + 1; 
            chance = chance-1; 
            if chance  == 0
                hangManGraph(countGraph);
            end
            fprintf("No %s in the word\n", strtrim(userInput)); 
            displayStatus(chance, guessingWord, guessingArray);
        end
        %To avoid loop infinitely when testing
        break;
    end
         
end
function [result] = isWinStage7(resultWord)
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

    %Stage6:
    %Loop until no chance left
    while chance > 0
        %Ask the user for the character
        userInput = input("\nWhat is your letter/word?:\n","s");
        

        %Check if the user input is valid or not
        while ~isUserInputError(userInput)
            userInput = input("Your input is not valid or your character has already been entered , please enter again:\n","s");
        end

        %if the user want to guess the whole word
        if strcmpi(userInput, "wholeWord")
            userInput = inputdlg("Please enter the whole word"); 
                        
            %If there is nothing in the dialogue box or the input is not all letters 
            %then prompt the user to enter again.
            while ~isTheWholeWordValid(userInput)
                fprintf("Input is not valid, please enter again\n"); 
                userInput = inputdlg("Please enter the whole word: ");
            end 
            
            %Get the element in row 1 column 1 of the cell array
            userInput = string(userInput{1,1});   


            %Print out the input to check if it is the word the user
            %entered or not       
            fprintf("The word is: %s", userInput);

            %Check if the user guess the whole word correctly or not
            %If correct then the user win: result = 1
            %Else result = 0, print out the graph, user lose 1 chance and
            %jump to next iteration. 
            if isGuessTheWholeWordCorrect(resultWord,userInput)
                result = 1;
                fprintf("\nresult is: 1"); 
                break;
            else
                %Add the word into guessingArray
                guessingArray = [guessingArray, userInput]; 
                chance = chance - 1; 
                hangManGraph(countGraph);
                countGraph = countGraph + 1;  
                fprintf("\nThe word is incorrect\n");
                displayStatus(chance,guessingWord,guessingArray); 
                %For testing, avoid infinite loop.
                break;
            end             

        %If the User don't want to guess the whole word:    
        else
            %Check the input value is valid or not
            while ~isGuessAgainValid(userInput, guessingArray)
                fprintf("Your input is not valid or the character has already been entered\n");
                userInput = input("Please enter again: ","s");
            end
   
            
        
            %if userInput is in the resultWord then substitude the character into the
            %resultWord and display it
            if contains(resultWord,userInput,'IgnoreCase',true)
                guessingWord = replaceChar(guessingWord, resultWord, userInput);
                displayStatus(chance, guessingWord, guessingArray); 
        
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
    
            %if user can guess the resultWord with chance > 0 then the user win
            if chance > 0 && ~contains(string(guessingWord),"*")
                result = 1; 
                displayStatus(chance,guessingWord,guessingArray); 
                break;
            end
        end
    end
end
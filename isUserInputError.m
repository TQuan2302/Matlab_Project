%Function to check whether the user input is an alphabetical character or
%not, if the character is valid then return 1, else return 0.
function result =  isUserInputError(userInput)
    %Convert user input into character array. 
    checkInputArray = convertStringsToChars(strtrim(userInput));
    
    %Check if all the elements in the result of isletter() are all 1 or
    %user enter 'wholeWord'.
    if (all(isletter(checkInputArray)) && length(checkInputArray)==1 )|| strcmpi(checkInputArray,"wholeWord")
        result = 1; 
    else
        result = 0; 
    end
end
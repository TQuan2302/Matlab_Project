%isTheWholeWordValid() return 1 if all the word in theWholeWord is letter,
%else return 0
function [isValid] = isTheWholeWordValid(theWholeWord)
    %Check input for the whole word
    %If the whole word is vacant or contain any character that is not
    %letter then retun 0, else 1.
    lengthOfRow = size(theWholeWord,1); 
    lengthOfCol = size(theWholeWord,2);
    

    if lengthOfRow ~= 1 || lengthOfCol ~= 1 || ~all(isletter(strtrim(theWholeWord{1,1}))) || all(isspace(strtrim(theWholeWord{1,1}))) || contains(strtrim(theWholeWord{1,1})," ")
        isValid = 0; 
    else
        isValid = 1; 
    end
end
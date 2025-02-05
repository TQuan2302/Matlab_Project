%input is a string
%a function return 1 if the input is a character in the alphabet and the character has not appear
%in the guessingArray. 
function value = isGuessAgainValid(input, guessingArray)
    %set the default value of isNotContain equal 1
    isNotContain = 1; 
    for i = 1:length(guessingArray)
        if guessingArray(i) == convertStringsToChars(input)
            isNotContain = 0; 
        end
    end

    %if the input of the user is valid and have not in the guessing Array then
    %input is accepted else the input is not accepted
    lengthOfInput = strlength(input); 
    if  isUserInputError(input) && isNotContain && (lengthOfInput==1)
        value = 1;
    else
        value = 0; 
    end
end
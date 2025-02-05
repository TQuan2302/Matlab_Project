%Function convert the * in guessingWord to the letter in resultWord with
%corresponding position when the user guess the character correctly. 
function [guessingWord] = replaceChar(guessingWord,result,char)
    %Convert result argument to character array
    result = convertStringsToChars(result); 
    
    %Loop through result argument and check which position contain char
    %then replace the asterik of that position in guessingWord with
    %char
    for i = 1:length(result)
        if strcmpi(result(i), char)
            guessingWord(i) = result(i);
        end
    end

end
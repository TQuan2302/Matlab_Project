%Funtion to check if a string is a number or not
function [isNumber] = isStringANumber(input)
    %If str2double can not convert a string to a number, it return nan
    checkValue = str2double(input);
    if isnan(checkValue)
        isNumber = 0;
    else
        isNumber = 1;
    end
end
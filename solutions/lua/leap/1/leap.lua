-- Made by Biraru
-- Comments added to make it easier to understand
-- Returning false means that the year is not a leap year
local leapYear = function(number)
    -- First checks if the number is divisible by 4, if not then it returns false
    if not (number % 4 == 0) then
        return false
    -- Secondly checks if the number is divisible by 100, if not then it returns true
    elseif not (number % 100 == 0) then
        return true
    -- Thirdly checks if the number is divisible by 400, if not then it returns false
    elseif not (number % 400 == 0) then
        return false
    end

    -- If all checks are met, it returns true
    return true
end

return leapYear

local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
    local stringNumber = tostring(number)
    local power = #stringNumber
    local sum = 0

    for digit in string.gmatch(number, "%d") do
        local digitNumber = tonumber(digit)
        sum = sum + digitNumber ^ power
    end

    return sum == number
end

return ArmstrongNumbers

local Hamming = {}

function Hamming.compute(a, b)
    if not a or not b then
        error("two strings must be provided")
    end

    if #a ~= #b then
        error("strands must be of equal length")
    end

    local differences = 0
    for i = 1, #a do
        if a:sub(i,i) ~= b:sub(i,i) then
            differences = differences + 1
        end
    end

    return differences
end

return Hamming

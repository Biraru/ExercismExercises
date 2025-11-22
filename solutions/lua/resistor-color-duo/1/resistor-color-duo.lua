local defaultColors = {
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
}

return {
  value = function(colors)
    local colorsDone = 0
    local returnColors = ""

    for _, color in ipairs(colors) do
      for i, defaultColor in ipairs(defaultColors) do
        if string.lower(color) ~= defaultColor or colorsDone >= 2 then
          goto continue
        end

        print(returnColors)
        returnColors = returnColors.. i - 1
        print(returnColors)
        colorsDone = colorsDone + 1
          ::continue::
      end
    end

    return tonumber(returnColors)
  end
}

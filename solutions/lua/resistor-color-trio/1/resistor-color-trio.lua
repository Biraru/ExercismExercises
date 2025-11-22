local colorMap = {
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9
}

return {
  decode = function(c1, c2, c3)
    local value = colorMap[c1] * 10 + colorMap[c2]
    local multiplier = 10 ^ colorMap[c3]
    local resistance = value * multiplier

    local unit
    if resistance >= 1e9 then
      resistance = resistance / 1e9
      unit = "gigaohms"
    elseif resistance >= 1e6 then
      resistance = resistance / 1e6
      unit = "megaohms"
    elseif resistance >= 1e3 then
      resistance = resistance / 1e3
      unit = "kiloohms"
    else
      unit = "ohms"
    end

    return resistance, unit
  end
}

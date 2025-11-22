local colors = {
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

local resistors = {
  color_code = function(color)
		local lowerColor = string.lower(color)

		if not lowerColor then
			return
		end

    for i, color in ipairs(colors) do
      if string.lower(color) == lowerColor then
        return i - 1
      end
    end
	end,
}

return resistors

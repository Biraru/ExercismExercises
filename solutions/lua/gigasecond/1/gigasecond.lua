local gigasecond = {}

function gigasecond.anniversary(any_date)
  local date = any_date + 1000000000
	local formattedDate = os.date("%m/%d/%y", date)

  return formattedDate
end

return gigasecond

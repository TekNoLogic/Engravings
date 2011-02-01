
local lasti, lastc
Engravings["Qty in bags:"] = setmetatable({}, {
	__index = function(t,i)
		if i ~= lasti then
			local num = GetItemCount(i)
			lastc = num > 0 and num
			lasti = i
		end
		return lastc
	end
})



local lasti, lastc
Engravings["Qty in bank:"] = setmetatable({}, {
	__index = function(t,i)
		if i ~= lasti then
			local num = GetItemCount(i, true) - GetItemCount(i)
			lastc = num > 0 and num
			lasti = i
		end
		return lastc
	end
})


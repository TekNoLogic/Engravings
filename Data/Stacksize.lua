
Engravings["Stack size:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, _, _, stack = GetItemInfo(i)
		stack = stack > 1 and stack or false
		t[i] = stack
		return stack
	end
})

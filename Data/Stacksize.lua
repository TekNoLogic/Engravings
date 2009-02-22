
Engravings["Stack size:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, _, _, stack = GetItemInfo(i)
		stack = (stack or 0) > 1 and (stack or 0) < 2147483647 and stack or false
		t[i] = stack
		return stack
	end
})

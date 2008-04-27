
Engravings["Stack size:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, _, _, stack = GetItemInfo(i)
		t[i] = stack
		return stack
	end
})

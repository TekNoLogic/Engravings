
Engravings["ItemID:"] = setmetatable({}, {
	__index = function(t,i)
		t[i] = i
		return i
	end
})

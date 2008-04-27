
Engravings["iLevel:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, ilvl = GetItemInfo(i)
		t[i] = ilvl
		return ilvl
	end
})

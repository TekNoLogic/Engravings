
Engravings["Type:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, iType, iSubtype, stack = GetItemInfo(i)
		typestr = stack == 2147483647 and iType or iType and iSubtype and (iType.. " - ".. iSubtype) or false
		t[i] = typestr
		return typestr
	end
})

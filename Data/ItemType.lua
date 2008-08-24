
Engravings["Type:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, iType, iSubtype = GetItemInfo(i)
		typestr = iType and iSubtype and (iType.. " - ".. iSubtype) or false
		t[i] = typestr
		return typestr
	end
})

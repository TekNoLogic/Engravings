
Engravings["Weighted iLevel:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, qual, ilvl = GetItemInfo(i)
		local wilvl = false
		if qual == 3 then
			wilvl = math.floor((ilvl-.75)/0.9 + 8)
		elseif qual ==4 then
			wilvl = math.floor((ilvl-26)/0.6 + 8)
		end
		t[i] = wilvl
		return wilvl
	end
})

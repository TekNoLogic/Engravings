
local CURRENCIES = [[
24579 Honor Hold
24581 Thrallmar
24245 Sporeggar
29735 The Aldor
29736 The Scryers
26045 Halaa
26044 Halaa
]]
Engravings["Currency:"] = setmetatable({}, {
	__index = function(t,i)
		local v = CURRENCIES:match("\n"..i.." ([^\n]+)\n")
		if v then
			t[i] = v
			return v
		else
			t[i] = false
			return
		end
	end
})


Engravings["Owned currency:"] = setmetatable({}, {
	__index = function(t,i)
		local name, _, _, _, _, itemtype, itemsubtype = GetItemInfo(i)
		if itemtype ~= "Money" or itemsubtype ~= "Money(OBSOLETE)" then t[i] = false; return end

		local onhand
		for i=1,GetCurrencyListSize() do
			local tokenname, _, _, _, _, qty = GetCurrencyListInfo(i)
			if tokenname == name then onhand = qty end
		end
		return onhand
	end
})

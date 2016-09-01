
local myname, ns = ...


Engravings["Vendor:"] = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, _, _, stack, _, _, price = GetItemInfo(i)
		if price and ((stack or 0) > 1) then
			price = ns.GSC(price)
			t[i] = price
			return price
		end
	end
})

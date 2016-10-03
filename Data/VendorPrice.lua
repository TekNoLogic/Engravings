
local myname, ns = ...


Engravings["Vendor:"] = setmetatable({}, {
	__index = function(t,i)
		local status, _, _, _, _, _, _, _, stack, _, _, price = pcall(GetItemInfo, i)
		assert(status, ("GetItemInfo failed for %q"):format(i or "nil"))

		if price and ((stack or 0) > 1) then
			price = ns.GSC(price)
			t[i] = price
			return price
		end
	end
})

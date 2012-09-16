
local myname, ns = ...


Engravings["In equipment sets:"] = setmetatable(ns.itemsets, {
	__index = function(t,i)
		t[i] = false
		return false
	end
})

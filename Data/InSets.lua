
Engravings["In equipment sets:"] = setmetatable(ENGRAVINGS_ITEMSETS, {
	__index = function(t,i)
		t[i] = false
		return false
	end
})

ENGRAVINGS_ITEMSETS = nil

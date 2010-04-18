
local TOKEN_REWARDS = [[
19505 60 |TInterface\Icons\INV_Misc_Rune_07:18|t
19506 60 |TInterface\Icons\INV_Misc_Rune_07:18|t
]]


Engravings["Warsong Gulch Mark of Honor:"] = setmetatable({}, {
	__index = function(t,i)
		local v = TOKEN_REWARDS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

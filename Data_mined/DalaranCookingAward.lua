
local TOKEN_REWARDS = [[
43007 1 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43017 5 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43018 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43019 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43020 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43021 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43022 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43023 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43024 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43025 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43026 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43027 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43028 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43029 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43030 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43031 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43032 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43033 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43034 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43035 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43036 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43037 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43505 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
43506 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
44954 3 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
46349 100 |TInterface\Icons\INV_Misc_Ribbon_01:18|t
]]


Engravings["Dalaran Cooking Award:"] = setmetatable({}, {
	__index = function(t,i)
		local v = TOKEN_REWARDS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

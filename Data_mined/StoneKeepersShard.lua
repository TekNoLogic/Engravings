
local TOKEN_REWARDS = [[
41727 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41728 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41730 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41732 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41733 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41734 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41735 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41736 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41737 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41738 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41739 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41740 12 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41742 24 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41743 24 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
41744 24 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
43956 300 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44066 20 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44067 30 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44068 30 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44069 40 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44075 40 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44076 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44077 300 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44078 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44081 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44082 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44084 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44087 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44088 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44089 15 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44091 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44092 325 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44093 325 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44094 250 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44095 325 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44096 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44097 250 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44098 250 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44099 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44100 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44101 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44102 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44103 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44105 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44107 200 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
44115 30 |TInterface\Icons\INV_Misc_Platnumdisks:18|t
]]


Engravings["Stone Keeper's Shard:"] = setmetatable({}, {
	__index = function(t,i)
		local v = TOKEN_REWARDS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

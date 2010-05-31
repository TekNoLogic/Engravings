
local TOKEN_REWARDS = [[
38353 50 |TInterface\Icons\INV_Misc_Coin_16:18|t
38354 50 |TInterface\Icons\INV_Misc_Coin_16:18|t
38355 50 |TInterface\Icons\INV_Misc_Coin_16:18|t
38356 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38357 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38358 70 |TInterface\Icons\INV_Misc_Coin_16:18|t
38359 70 |TInterface\Icons\INV_Misc_Coin_16:18|t
38360 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38361 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38362 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38363 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38364 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38365 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38366 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38367 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
38368 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
40822 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
40867 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
40875 30 |TInterface\Icons\INV_Misc_Coin_16:18|t
]]


Engravings["Venture Coin:"] = setmetatable({}, {
	__index = function(t,i)
		local v = TOKEN_REWARDS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

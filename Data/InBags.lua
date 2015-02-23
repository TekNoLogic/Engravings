
local bags = setmetatable({}, {
	__index = function(t,i)
		local num = GetItemCount(i)
		num = num > 0 and num or false
		t[i] = num
		return num
	end
})


local bank = setmetatable({}, {
	__index = function(t,i)
		local num = GetItemCount(i, true) - GetItemCount(i)
		num = num > 0 and num or false
		t[i] = num
		return num
	end
})


Engravings["Qty in bags:"] = bags
Engravings["Qty in bank:"] = bank


local f = CreateFrame("Frame")
f:SetScript("OnEvent", function()
	wipe(bags)
	wipe(bank)
end)
f:RegisterEvent("BAG_UPDATE")
f:RegisterEvent("PLAYERREAGENTBANKSLOTS_CHANGED")

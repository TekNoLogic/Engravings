
local myname, ns = ...


ns.itemsets = {}
ns.setitems = setmetatable({}, {__index = function(t,i)
	local v = {}
	t[i] = v
	return v
end})


local f = CreateFrame("Frame")
f:SetScript("OnEvent", function()
	wipe(ns.itemsets)
	wipe(ns.setitems)

	local temp = {}
	for i=1,GetNumEquipmentSets() do
		local setname, tex = GetEquipmentSetInfo(i)
		GetEquipmentSetItemIDs(setname, temp)

		for i,id in pairs(temp) do
			table.insert(ns.setitems[i], id)
			ns.itemsets[id] = (ns.itemsets[id] and (ns.itemsets[id]..", ") or "")..
			               "|T"..tex..":18|t"..setname
		end
	end
end)

f:RegisterEvent("EQUIPMENT_SETS_CHANGED")
if IsLoggedIn() then
	f:GetScript("OnEvent")() else f:RegisterEvent("PLAYER_LOGIN")
end

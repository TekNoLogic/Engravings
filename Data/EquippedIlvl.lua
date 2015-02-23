
local slotids = setmetatable({}, {
	__index = function(t,i)
		local slotid = GetInventorySlotInfo(i)
		t[i] = slotid
		return slotid
	end
})


local trinketslots = {"Trinket0Slot", "Trinket1Slot"}
local fingerslots = {"Finger0Slot", "Finger1Slot"}
local slots = {
	-- 530-610 "Tormented" (lv90 mission rewards)
	[114094] = "WristSlot",
	[114096] = "FeetSlot",
	[114097] = "HandsSlot",
	[114098] = "HeadSlot",
	[114099] = "LegsSlot",
	[114100] = "ShoulderSlot",
	[114101] = "WaistSlot",
	[114105] = trinketslots,
	[114108] = "MainHandSlot",

	-- 615 "Munificent"
	[114057] = "WristSlot",
	[114058] = "ChestSlot",
	[114059] = "FeetSlot",
	[114060] = "HandsSlot",
	[114061] = "HeadSlot",
	[114062] = "LegsSlot",
	[114063] = "ShoulderSlot",
	[114064] = "WaistSlot",
	[114065] = fingerslots,
	[114066] = "NeckSlot",
	[114067] = "BackSlot",
	[114068] = trinketslots,
	[114109] = "MainHandSlot",

	-- 630 "Turbulent"
	[114069] = "WristSlot",
	[114070] = "ChestSlot",
	[114071] = "FeetSlot",
	[114072] = "HandsSlot",
	[114073] = "HeadSlot",
	[114074] = "LegsSlot",
	[114075] = "ShoulderSlot",
	[114076] = "WaistSlot",
	[114077] = fingerslots,
	[114078] = "NeckSlot",
	[114079] = "BackSlot",
	[114080] = trinketslots,
	[114110] = "MainHandSlot",

	-- 645 "Grandiose"
	[114082] = "WristSlot",
	[114083] = "ChestSlot",
	[114084] = "FeetSlot",
	[114085] = "ShoulderSlot",
	[114086] = "NeckSlot",
	[114087] = trinketslots,
	[114112] = "MainHandSlot",
	[119114] = "HandsSlot",
	[119116] = "HeadSlot",
	[119118] = "LegsSlot",
	[119120] = "WaistSlot",
	[119122] = fingerslots,
	[119124] = "BackSlot",
}
local function GetIlvl(slot)
	local slotid = slotids[slot]
	local link = GetInventoryItemLink("player", slotid)
	local _, _, _, ilvl = GetItemInfo(link)
	return ilvl
end


Engravings["Currently equipped ilvl:"] = setmetatable({}, {
	__index = function(t,i)
		local slot = slots[i]
		if not slot then t[i] = false; return end

		local v
		if type(slot) == "table" then
			local vals = {}
			for i,slotname in pairs(slot) do
				local ilvl = GetIlvl(slotname)
				if ilvl then table.insert(vals, ilvl) end
			end
			v = table.concat(vals, ", ")
		else
			v = GetIlvl(slot)
		end

		t[i] = v
		return v
	end
})

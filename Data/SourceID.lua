
local myname, ns = ...


local SLOTIDS = {
	INVTYPE_HEAD = INVSLOT_HEAD,
	INVTYPE_SHOULDER = INVSLOT_SHOULDER,
	INVTYPE_CHEST = INVSLOT_CHEST,
	INVTYPE_CLOAK = INVSLOT_BACK,
	INVTYPE_WAIST = INVSLOT_WAIST,
	INVTYPE_LEGS = INVSLOT_LEGS,
	INVTYPE_FEET = INVSLOT_FEET,
	INVTYPE_WRIST = INVSLOT_WRIST,
	INVTYPE_HAND = INVSLOT_HAND,

	INVTYPE_WEAPON = INVSLOT_MAINHAND,
	INVTYPE_2HWEAPON = INVSLOT_MAINHAND,

	INVTYPE_WEAPONMAINHAND = INVSLOT_MAINHAND,
	INVTYPE_WEAPONOFFHAND = INVSLOT_OFFHAND,
	INVTYPE_HOLDABLE = INVSLOT_OFFHAND,
	INVTYPE_SHIELD = INVSLOT_OFFHAND,
	INVTYPE_RANGED = INVSLOT_MAINHAND,
	INVTYPE_RANGEDRIGHT = INVSLOT_MAINHAND,

	-- [BODY] = {4},
	-- [ROBE] = {5},
	-- [TABARD] = false,
}

local model = CreateFrame("DressUpModel")


local function GetSourceID(id)
	if not IsDressableItem(id) then return end

	local _, link, _, _, _, _, _, _, slotname = GetItemInfo(id)
	local slot = SLOTIDS[slotname]
	if not slot then return end

	model:SetUnit("player")
	model:Undress()

	model:TryOn(link, slot)
	local sourceID = model:GetSlotTransmogSources(slot)
	if sourceID ~= 0 then return sourceID end
end


Engravings["SourceID:"] = setmetatable({}, {
	__index = function(t,i)
		local v = GetSourceID(i)
		if v then
			t[i] = v
			return v
		end
	end
})

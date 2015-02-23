
local myname, ns = ...


local temp, temp2 = {}, {}
local CBEST = "|cff80ff80"
local CSECOND = "|cffffff80"
local _, myclass = UnitClass("player")
local candualwield = myclass == "ROGUE" or myclass == "WARRIOR"
                     or myclass == "HUNTER" or myclass == "SHAMAN"
                     or myclass == "DEATHKNIGHT" or myclass == "MONK"

local slotids = {
	INVTYPE_HEAD = 1,
	INVTYPE_NECK = 2,
	INVTYPE_SHOULDER = 3,
	INVTYPE_BODY = 4,
	INVTYPE_CHEST = 5,
	INVTYPE_ROBE = 5,
	INVTYPE_WAIST = 6,
	INVTYPE_LEGS = 7,
	INVTYPE_FEET = 8,
	INVTYPE_WRIST = 9,
	INVTYPE_HAND = 10,
	INVTYPE_FINGER = 11,
	INVTYPE_TRINKET = 13,
	INVTYPE_CLOAK = 15,
	INVTYPE_WEAPON = 17,
	INVTYPE_SHIELD = 17,
	INVTYPE_2HWEAPON = 16,
	INVTYPE_WEAPONMAINHAND = 16,
	INVTYPE_WEAPONOFFHAND = 17,
	INVTYPE_HOLDABLE = 17,
	INVTYPE_RANGED = 16,
	INVTYPE_THROWN = 18,
	INVTYPE_RANGEDRIGHT = 16,
	INVTYPE_RELIC = 18,
}
local slots = setmetatable({}, {__index = function(t,i)
	local _, _, _, _, _, _, _, _, slotname = GetItemInfo(i)
	local slotid = slotids[slotname]
	if slotname == "INVTYPE_WEAPON" and not candualwield then slotid = 16 end
	t[i] = slotid
	return slotid
end})


local twohanders = setmetatable({}, {__index = function(t,i)
	local _, _, _, _, _, _, _, _, slotname = GetItemInfo(i)
	local twohand = slotname == "INVTYPE_2HWEAPON"
	t[i] = twohand
	return twohand
end})


-- Is the item equipped in the mainhand slot a one-hand weapon?
local function MainhandIsOnehandWeapon()
	local id = GetInventoryItemID('player', 16)
	if not id then return false end
	return not twohanders[id]
end


function ns.GenerateScoreSet(name, values)
	local lastlink, lastbest, lastsecondbest
  ns.fullLinkSources[name] = true
	Engravings[name] = setmetatable({}, {
		__index = function(t,i)
			local v = values[i]
			if not v or v == 0 then t[i] = false; return end

			if lastlink ~= i then
				local slotid = slots[i]
				local showsecond = slotid == 17 and IsDualWielding()
				                     and MainhandIsOnehandWeapon()
				                     or slotid == 11 or slotid == 13
				local onehandonly = slotid == 16 and not twohanders[i]
				local twohandonly = slotid == 16 and twohanders[i]
				local items = slotid and GetInventoryItemsForSlot(slotid, wipe(temp))
				              or wipe(temp)
				local bestid, bestscore = 0, 0
				local secondbestid, secondbestscore = 0, 0
				local best = true
				local secondbest = false


				-- Convert the GetInventoryItemsForSlot returns into links
				wipe(temp2)
				for mask,id in pairs(items) do
					local player, bank, bags, voidStorage, slot, bag = EquipmentManager_UnpackLocation(mask)
					if not voidStorage then
						local link
						if bag then
							link = GetContainerItemLink(bag, slot)
						else
							link = GetInventoryItemLink("player", slot)
						end
						temp2[link] = true
					end
				end
				items = temp2

				-- Add the current item we're viewing
				items[i] = true

				if slotid then
					-- Add our currently equipped item
					local link = GetInventoryItemLink("player", slotid)
					if link then items[link] = true end

					-- Add items we have in saved sets for this slot
					for _,id in pairs(ns.setitems[slotid]) do items[id] = true end
				end

				-- We get some odd values here
				items[1]  = nil
				items[0]  = nil
				items[-1] = nil

				for id in pairs(items) do
					local twohand = twohanders[id]
					if onehandonly and twohand or twohandonly and not twohand then
						items[id] = nil
					end
				end

				for id in pairs(items) do
					local thisscore = tonumber(values[id])
					if thisscore and id ~= bestid and id ~= secondbestid then
						if thisscore >= bestscore then
							-- Best item so far, push the current best down to second
							secondbestid, secondbestscore = bestid, bestscore
							bestid, bestscore = id, thisscore

						elseif thisscore > secondbestscore and thisscore ~= bestscore then
							-- Not the best, but is better than the secondbest
							secondbestid, secondbestscore = id, thisscore
						end
					end
				end

				-- Purge secondbest if we don't have a trinket or ring
				if not showsecond then secondbestid, secondbestscore = nil end

				lastlink, lastbest, lastsecondbest = i, bestid == i, secondbestid == i
			end

			local color = lastbest and CBEST or lastsecondbest and CSECOND or ""
			return string.format("%s%.03f", color, v)
		end
	})
end

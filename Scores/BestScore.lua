
local myname, ns = ...


local temp = {}
local CBEST = "|cff80ff80"
local CSECOND = "|cffffff80"


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
	t[i] = slotid
	return slotid
end})


function ns.GenerateScoreSet(name, values)
	local lastid, lastbest, lastsecondbest
	Engravings[name] = setmetatable({}, {
		__index = function(t,i)
			local v = values[i]
			if not v or v == 0 then t[i] = false; return end

			if lastid ~= i then
				local slotid = slots[i]
				local trinkring = slotid == 11 or slotid == 13
				local items = slotid and GetInventoryItemsForSlot(slotid, wipe(temp))
				              or wipe(temp)
				local bestid, bestscore = 0, 0
				local secondbestid, secondbestscore = 0, 0
				local best = true
				local secondbest = false

				-- Add the current item we're viewing
				table.insert(items, i)

				-- Add items we have in saved sets for this slot
				if slotid then
					for _,id in pairs(ns.setitems[slotid]) do table.insert(items, id) end
				end

				for _,id in pairs(items) do
					local thisscore = tonumber(values[id])
					if thisscore then
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
				if not trinkring then secondbestid, secondbestscore = nil end

				lastid, lastbest, lastsecondbest = i, bestid == i, secondbestid == i
			end

			local color = lastbest and CBEST or lastsecondbest and CSECOND or ""
			return string.format("%s%.03f", color, v)
		end
	})
end

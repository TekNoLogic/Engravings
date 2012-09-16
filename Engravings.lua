
local myname, ns = ...


Engravings = {}
local sources = Engravings
local origs = {}
local R, G, B = 1, 136/255, 0
local db, dbpc, sortedtitles

local function initdb()
	EngravingsDB2, EngravingsDBPC = EngravingsDB2 or {}, EngravingsDBPC or {}
	for title in pairs(sources) do if title:match("^Wowhead score") and EngravingsDB2[title] then EngravingsDBPC[title], EngravingsDB2[title] = EngravingsDB2[title], nil end end
	return EngravingsDB2, EngravingsDBPC
end
Engravings.initdb = initdb

local function AddLines(frame, title, line, ...)
	if not line then return end
	frame:AddDoubleLine(type(title) == "string" and title or "", line, R, G, B, R, G, B)
	AddLines(frame, " ", ...)
end

local function OnTooltipSetItem(frame, ...)
	if not db then db, dbpc = initdb() end
	if not sortedtitles then
		sortedtitles = {}
		for title,data in pairs(sources) do table.insert(sortedtitles, title) end
		table.sort(sortedtitles, function(a,b) return string.lower(a) < string.lower(b) end)
	end

	local name, link = frame:GetItem()
	if link then
		local id = tonumber(link:match("item:(%d+):"))
		for i,title in pairs(sortedtitles) do
			local data = sources[title]
			if not (db[title] or dbpc[title]) and data[id] then AddLines(frame, title, string.split("`", data[id])) end
		end
	end
	if origs[frame] then return origs[frame](frame, ...) end
end


for _,frame in pairs{GameTooltip, ItemRefTooltip, ShoppingTooltip1, ShoppingTooltip2} do
	origs[frame] = frame:GetScript("OnTooltipSetItem")
	frame:SetScript("OnTooltipSetItem", OnTooltipSetItem)
end


---------------------------------
--      Wowhead generator      --
---------------------------------

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
	INVTYPE_RANGED = 18,
	INVTYPE_THROWN = 18,
	INVTYPE_RANGEDRIGHT = 18,
	INVTYPE_RELIC = 18,
}
local slots = setmetatable({}, {__index = function(t,i)
	local _, _, _, _, _, _, _, _, slotname = GetItemInfo(i)
	local slotid = slotids[slotname]
	t[i] = slotid
	return slotid
end})
local temp = {}

function EngravingsGenerateWowheadSet(spec, data)
	local values = setmetatable({}, {
		__index = function(t,i)
			local v = data:match("\n"..i.." ([^\n]+)\n")
			if v then t[i] = v; return v
			else t[i] = 0; return 0 end
		end
	})

	local lastid, lastbest, lastsecondbest
	Engravings["Wowhead score ("..spec.."):"] = setmetatable({}, {
		__index = function(t,i)
			local v = values[i]
			if not v or v == 0 then t[i] = false; return end

			if lastid ~= i then
				local slotid = slots[i]
				local trinkring = slotid == 11 or slotid == 13
				local items = slotid and GetInventoryItemsForSlot(slotid, wipe(temp)) or wipe(temp)
				local bestid, bestscore = 0, 0
				local secondbestid, secondbestscore = 0, 0
				local best = true
				local secondbest = false

				-- Add the current item we're viewing
				table.insert(items, i)

				-- Add items we have in saved sets for this slot
				if slotid then for _,id in pairs(ns.setitems[slotid]) do table.insert(items, id) end end

				for _,id in pairs(items) do
					local thisscore = tonumber(values[id])
					if thisscore >= bestscore then
						-- Best item so far, push the current best down to second
						secondbestid, secondbestscore = bestid, bestscore
						bestid, bestscore = id, thisscore
					elseif thisscore > secondbestscore and thisscore ~= bestscore then
						-- Not the best, but is better than the secondbest
						secondbestid, secondbestscore = id, thisscore
					end
				end

				-- Purge secondbest if we don't have a trinket or ring
				if not trinkring then secondbestid, secondbestscore = nil end

				lastid, lastbest, lastsecondbest = i, bestid == i, secondbestid == i
			end

			return (lastbest and "|cff80ff80" or lastsecondbest and "|cffffff80" or "")..v
		end
	})
end

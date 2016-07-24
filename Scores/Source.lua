
local myname, ns = ...


local scoresets = {}
local sources = {
	ITEM_MOD_CRIT_RATING_SHORT = true,
	ITEM_MOD_DODGE_RATING_SHORT = true,
	ITEM_MOD_EXPERTISE_RATING_SHORT = true,
	ITEM_MOD_HASTE_RATING_SHORT = true,
	ITEM_MOD_HIT_RATING_SHORT = true,
	ITEM_MOD_MASTERY_RATING_SHORT = true,
	ITEM_MOD_PARRY_RATING_SHORT = true,
	ITEM_MOD_SPIRIT_SHORT = true,
}
local targets = {
	ITEM_MOD_CRIT_RATING_SHORT = true,
	ITEM_MOD_DODGE_RATING_SHORT = true,
	ITEM_MOD_HASTE_RATING_SHORT = true,
	ITEM_MOD_MASTERY_RATING_SHORT = true,
	ITEM_MOD_PARRY_RATING_SHORT = true,
	ITEM_MOD_SPIRIT_SHORT = true,
}


local stats, total_weights, socket = {}, {}, {
	EMPTY_SOCKET_RED = true,
	EMPTY_SOCKET_YELLOW = true,
	EMPTY_SOCKET_BLUE = true,
}
local function GetGemScore(spec, ilvl)
	local best = 0
	for level,score in pairs(ns.gem_value[spec]) do
		if ilvl >= level and score > best then best = score end
	end
	return best
end
for spec,weights in pairs(ns.spec_weights) do
	local total_weight = 0

	for stat,weight in pairs(weights) do
		total_weight = total_weight + weight
	end

	local values = setmetatable({}, {
		__index = function(t,i)
			if true then return end

			local name, link, _, ilvl, _, _, itemtype, _, slotname = GetItemInfo(i)
			if slotname == "INVTYPE_CLOAK" then
				-- Why the fuck are cloaks "Cloth" and not "Misc"?
				itemtype = GetAuctionItemSubClasses(2)
			end
			if not link or (itemtype and not ns.classgear[itemtype]) then return end

			wipe(stats)
			stats = GetItemStats(link, stats)

			local score = 0
			for stat,val in pairs(stats) do
				score = score + val * (weights[stat] or 0)
				if socket[stat] then score = score + GetGemScore(spec, ilvl) end
			end

			score = score / total_weight

			t[i] = score
			return score
		end
	})

  scoresets[spec] = values

	ns.GenerateScoreSet("Score ("..spec.."):", values)
end


local f = CreateFrame("Frame")
f:SetScript("OnEvent", function()
	for name,scores in pairs(scoresets) do
		wipe(scores)
	end
end)

f:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")

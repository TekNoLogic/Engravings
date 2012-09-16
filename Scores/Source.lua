
local myname, ns = ...


local reforges = {}
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
local function reforge(spec, id, stats, weights)
	local target, source, lastdiff

	for target_stat in pairs(targets) do
		for source_stat in pairs(sources) do
			if target_stat ~= source_stat and stats[source_stat]
				and weights[target_stat] then

				local usable = stats[source_stat] * 0.4
				local source_weight = usable * (weights[source_stat] or 0)
				local target_weight = usable * weights[target_stat]
				local diff = target_weight - source_weight

				if diff > 0 and (not lastdiff or diff > lastdiff) then
					target, source, lastdiff = target_stat, source_stat, diff
				end
			end
		end
	end

	if not target or not source then return end

	reforges[spec] = reforges[spec] or {}
	reforges[spec][id] = _G[source].. " -> ".. _G[target]
end


local stats, total_weights = {}, {}
for spec,weights in pairs(ns.spec_weights) do
	local total_weight = 0

	for stat,weight in pairs(weights) do
		total_weight = total_weight + weight
	end

	local values = setmetatable({}, {
		__index = function(t,i)
			local name, link = GetItemInfo(i)
			if not link then return end

			wipe(stats)
			stats = GetItemStats(link, stats)
			reforge(spec, i, stats, weights)

			local score = 0
			for stat,val in pairs(stats) do
				score = score + val * (weights[stat] or 0)
			end

			score = math.floor((score / total_weight) * 1000) / 1000

			t[i] = score
			return score
		end
	})

	Engravings["Tek Reforge ("..spec.."):"] = setmetatable({}, {
		__index = function(t,i)
			return reforges[spec] and reforges[spec][i]
		end
	})

	ns.GenerateScoreSet("Score ("..spec.."):", values)
end

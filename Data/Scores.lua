
local stats = {}
local spec_weights = {
	Discipline = {
		ITEM_MOD_INTELLECT_SHORT = 100,
		ITEM_MOD_SPIRIT_SHORT = 80,
		ITEM_MOD_SPELL_POWER_SHORT = 75,
		ITEM_MOD_MASTERY_RATING_SHORT = 60,
		ITEM_MOD_HASTE_RATING_SHORT = 50,
		ITEM_MOD_CRIT_RATING_SHORT = 40,
	},
	Holy = {
		ITEM_MOD_INTELLECT_SHORT = 100,
		ITEM_MOD_SPIRIT_SHORT = 80,
		ITEM_MOD_SPELL_POWER_SHORT = 75,
		ITEM_MOD_HASTE_RATING_SHORT = 75,
		ITEM_MOD_MASTERY_RATING_SHORT = 70,
		ITEM_MOD_CRIT_RATING_SHORT = 50,
  },
	Shadow = {
		ITEM_MOD_INTELLECT_SHORT = 100,
		ITEM_MOD_SPIRIT_SHORT = 77,
		ITEM_MOD_SPELL_POWER_SHORT = 56,
		ITEM_MOD_HASTE_RATING_SHORT = 54,
		ITEM_MOD_HIT_RATING_SHORT = 54,
		ITEM_MOD_MASTERY_RATING_SHORT = 52,
		ITEM_MOD_CRIT_RATING_SHORT = 47,
  },
}
local total_weights = {}
for spec,weights in pairs(spec_weights) do
	local total_weight = 0

	for stat,weight in pairs(weights) do
		total_weight = total_weight + weight
	end

	Engravings["Score (".. spec.. "):"] = setmetatable({}, {
		__index = function(t,i)
			local name, link = GetItemInfo(i)
			if not link then return end

			for j in pairs(stats) do stats[j] = nil end
			stats = GetItemStats(link, stats)

			local score = 0
			for stat,val in pairs(stats) do
				score = score + val * (weights[stat] or 0)
			end

			score = string.format("%.03f", score / total_weight)
			-- score = math.floor((score / total_weight) * 1000) / 1000

			t[i] = score
			return score
		end
	})
end

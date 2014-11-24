
local myname, ns = ...


local gem_stats = {
	[1] = {
		ITEM_MOD_AGILITY_SHORT = 8,
		ITEM_MOD_CRIT_RATING_SHORT = 16,
		ITEM_MOD_DODGE_RATING_SHORT = 16,
		ITEM_MOD_HASTE_RATING_SHORT = 16,
		ITEM_MOD_INTELLECT_SHORT = 8,
		-- ITEM_MOD_MASTERY_RATING_SHORT = 16,
		ITEM_MOD_PARRY_SHORT = 16,
		ITEM_MOD_SPIRIT_SHORT = 16,
		ITEM_MOD_STAMINA_SHORT = 12,
		ITEM_MOD_STRENGTH_SHORT = 8,
	},
	[285] = {
		ITEM_MOD_AGILITY_SHORT = 8,
		ITEM_MOD_CRIT_RATING_SHORT = 16,
		ITEM_MOD_DODGE_RATING_SHORT = 16,
		ITEM_MOD_HASTE_RATING_SHORT = 16,
		ITEM_MOD_INTELLECT_SHORT = 8,
		ITEM_MOD_MASTERY_RATING_SHORT = 16,
		ITEM_MOD_PARRY_SHORT = 16,
		ITEM_MOD_SPIRIT_SHORT = 16,
		ITEM_MOD_STAMINA_SHORT = 12,
		ITEM_MOD_STRENGTH_SHORT = 8,
	},
	[417] = {
		ITEM_MOD_AGILITY_SHORT = 10,
		ITEM_MOD_CRIT_RATING_SHORT = 20,
		ITEM_MOD_DODGE_RATING_SHORT = 20,
		ITEM_MOD_HASTE_RATING_SHORT = 20,
		ITEM_MOD_INTELLECT_SHORT = 10,
		ITEM_MOD_MASTERY_RATING_SHORT = 20,
		ITEM_MOD_PARRY_SHORT = 20,
		ITEM_MOD_SPIRIT_SHORT = 20,
		ITEM_MOD_STAMINA_SHORT = 15,
		ITEM_MOD_STRENGTH_SHORT = 10,
	},
	[600] = {
		ITEM_MOD_CR_MULTISTRIKE_SHORT = 50,
		ITEM_MOD_CRIT_RATING_SHORT = 50,
		ITEM_MOD_HASTE_RATING_SHORT = 50,
		ITEM_MOD_MASTERY_RATING_SHORT = 50,
		ITEM_MOD_STAMINA_SHORT = 50,
		ITEM_MOD_VERSATILITY = 50,
	},
}


ns.gem_value = {}
for spec,weights in pairs(ns.spec_weights) do
	ns.gem_value[spec] = {}
	for ilvl,stats in pairs(gem_stats) do
		local bestval, best = 0

		for stat,val in pairs(weights) do
			local weighted_val = val * (stats[stat] or 0)
			if weighted_val > bestval then bestval, best = weighted_val, stat end
		end

		ns.gem_value[spec][ilvl] = bestval
	end
end

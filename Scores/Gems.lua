
local myname, ns = ...


local gem_stats = {
	-- Red
	ITEM_MOD_INTELLECT_SHORT = 40,
	ITEM_MOD_PARRY_SHORT = 40,
	ITEM_MOD_AGILITY_SHORT = 40,
	ITEM_MOD_STRENGTH_SHORT = 40,

	-- Yellow
	ITEM_MOD_MASTERY_RATING_SHORT = 40,
	-- ITEM_MOD_PVP_RESILIANCE_RATING_SHORT = 40,
	ITEM_MOD_HASTE_RATING_SHORT = 40,
	ITEM_MOD_DODGE_RATING_SHORT = 40,
	ITEM_MOD_CRIT_RATING_SHORT = 40,

	-- Blue
	-- ITEM_MOD_PVP_POWER_SHORT = 40,
	ITEM_MOD_STAMINA_SHORT = 60,
	ITEM_MOD_HIT_RATING_SHORT = 40,
	ITEM_MOD_SPIRIT_SHORT = 40,
}

for spec,weights in pairs(ns.spec_weights) do
	local bestval, best = 0

	for stat,val in pairs(weights) do
		local weighted_val = val * (gem_stats[stat] or 0)
		if weighted_val > bestval then bestval, best = weighted_val, stat end
	end

	ns.gem_value = bestval
end


if select(4, GetBuildInfo()) < 40200 then return end


local t, t2, t3, t4 = {}, {}, {}, {}
Engravings["Drops in:"] = t
Engravings["Dropped by:"] = t2
Engravings["Drop modes:"] = t4


local function ScanInstance(instanceID, instancename, mode, diff)
	EJ_SelectInstance(instanceID)
	for i=1,EJ_GetNumLoot() do
		local itemname, icon, slot, armorType, itemID = EJ_GetLootInfoByIndex(i)
		t3[itemID] = t3[itemID] or {}
		t3[itemID][instancename] = t3[itemID][instancename] or {}
		table.insert(t3[itemID][instancename], mode)
	end

	local i = 1
	local name, description, bossID = EJ_GetEncounterInfoByIndex(i)
	while bossID do
		EJ_SelectEncounter(bossID)

		for i=1,EJ_GetNumLoot() do
			local itemname, icon, slot, armorType, itemID = EJ_GetLootInfoByIndex(i)
			if t2[itemID] then
				if not string.find(t2[itemID], name) then
					t2[itemID] = t2[itemID].. "`".. name
				end
			else
				t2[itemID] = name
			end
		end

		i = i + 1
		name, description, bossID = EJ_GetEncounterInfoByIndex(i)
	end
end


local difficulties = {
	PLAYER_DIFFICULTY1, -- 5M
	PLAYER_DIFFICULTY2, -- 5M
	"10N",
	"25N",
	"10H",
	"25H",
	"25LFR",
	PLAYER_DIFFICULTY5, -- 5M
	[14] = "N",
	[15] = "H",
	[16] = "M",
	[17] = "RF",
}
for tier=1,EJ_GetNumTiers() do
	EJ_SelectTier(tier)
	for j=1,2 do
		local i, israid = 1, j == 1
		local instanceID, instancename, description, background, buttonImage = EJ_GetInstanceByIndex(i, israid)
		while instanceID do
			EJ_SelectInstance(instanceID)
			for diff,mode in pairs(difficulties) do
				if EJ_IsValidInstanceDifficulty(diff) then
					ScanInstance(instanceID, instancename, mode, diff)
				end
			end
			i = i + 1
			instanceID, instancename, description, background, buttonImage = EJ_GetInstanceByIndex(i, israid)
		end
	end
end

for itemID,instances in pairs(t3) do
	local s, s2
	for instance,modes in pairs(instances) do
		s = (s and (s.. "`") or "").. instance
		s2 = table.concat(modes, ", ")
	end
	t[itemID] = s
	t4[itemID] = s2
end


if select(4, GetBuildInfo()) < 40200 then return end


local t, t2 = {}, {}
Engravings["Drops in:"] = t
Engravings["Dropped by:"] = t2


local function Scan(table, name)
	for i=1,EJ_GetNumLoot() do
		local itemname, icon, slot, armorType, itemID = EJ_GetLootInfoByIndex(i)
		table[itemID] = name
	end
end


local function ScanInstance(instanceID, instancename, heroic, tenman)
	local suffix = ""
	if heroic then suffix = " (Heroic)" end
	EJ_SetDifficulty(heroic, tenman)
	EJ_SelectInstance(instanceID)
	Scan(t, instancename..suffix)

	local i = 1
	local name, description, bossID = EJ_GetEncounterInfoByIndex(i)
	while bossID do
		EJ_SelectEncounter(bossID)
		Scan(t2, name)
		i = i + 1
		name, description, bossID = EJ_GetEncounterInfoByIndex(i)
	end
end


for j=1,2 do
	local i = 1
	local instanceID, instancename, description, background, buttonImage = EJ_GetInstanceByIndex(i, j == 1)
	local instanceButton
	while instanceID do
		ScanInstance(instanceID, instancename, true, false)
		ScanInstance(instanceID, instancename, false, false)
		i = i + 1
		instanceID, instancename, description, background, buttonImage = EJ_GetInstanceByIndex(i, j == 1)
	end
end

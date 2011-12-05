
if select(4, GetBuildInfo()) < 40200 then return end


local t, t2 = {}, {}
Engravings["Drops in:"] = t
Engravings["Dropped by:"] = t2


local function Scan(table, name)
	for i=1,EJ_GetNumLoot() do
		local itemname, icon, slot, armorType, itemID = EJ_GetLootInfoByIndex(i)
		if table[itemID] then
			if not string.find(table[itemID], name) then
				table[itemID] = table[itemID].. "|".. name
			end
		else
			table[itemID] = name
		end
	end
end


local function ScanInstance(instanceID, instancename, diff)
	EJ_SetDifficulty(diff)
	EJ_SelectInstance(instanceID)
	Scan(t, instancename)

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
	local i, israid = 1, j == 1
	local suffixes = israid and {" 10", " 25", " 10H", " 25H", " LFR"} or {" Normal", " Heroic"}
	local instanceID, instancename, description, background, buttonImage = EJ_GetInstanceByIndex(i, israid)
	local instanceButton
	while instanceID do
		for diff,suffix in ipairs(suffixes) do ScanInstance(instanceID, instancename..suffix, diff) end
		i = i + 1
		instanceID, instancename, description, background, buttonImage = EJ_GetInstanceByIndex(i, israid)
	end
end

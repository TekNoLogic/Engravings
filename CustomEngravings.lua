
local slash, db


function Engravings:Initialize()
	EngravingsDB = EngravingsDB or {}
	if EngravingsDB.profiles then EngravingsDB = EngravingsDB.profiles.global or {} end
	db = EngravingsDB

	slash = self:InitializeSlashCommand("Engrave notes on your items", "ENGRAVINGS", "engrave")
	slash:RegisterSlashHandler("[link] <note>: Engrave an item, blank note erases saved engraving",
		"^|c.+|Hitem:(%d+):.+|h|r%s*(.*)", function(itemid, note)
			if note == "" then note = nil end
			if itemid then db[tonumber(itemid)] = note end
	end)
end


----------------------------
--      Main Methods      --
----------------------------

function Engravings:GetEngraving(id)
	return id and db[id]
end


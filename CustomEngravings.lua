
local db

local obj = DongleStub("Dongle-1.0"):New("Engravings")


function obj:Initialize()
	EngravingsDB = EngravingsDB or {}
	if EngravingsDB.profiles then EngravingsDB = EngravingsDB.profiles.global or {} end
	db = EngravingsDB

	Engravings["Engraving:"] = db
end

SLASH_ENGRAVINGS1 = "/engrave"
SlashCmdList.ENGRAVINGS = function(msg)
	local itemid, note = msg:match("^%s*|c.+|Hitem:(%d+):.+|h|r(.*)$")
	if not itemid then ChatFrame1:AddMessage("Usage: '/engrave [item link] note' - Engraves an item, blank note erases saved engraving")
	else
		note = string.trim(note)
		if note == "" then note = nil end
		db[tonumber(itemid)] = note
	end
end

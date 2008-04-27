
local db
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(frame, event, addon)
	if addon ~= "Engravings" then return end

	EngravingsDB = EngravingsDB or {}
	if EngravingsDB.profiles then EngravingsDB = EngravingsDB.profiles.global or {} end
	db = EngravingsDB

	Engravings["Engraving:"] = db

	f:UnregisterEvent("ADDON_LOADED")
	f:SetScript("OnEvent", nil)
end)

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

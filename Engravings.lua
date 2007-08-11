
local slash, db
local presets = Engravings_presets
Engravings_presets = nil


local R, G, B = 1, 136/255, 0

Engravings = DongleStub("Dongle-1.0"):New("Engravings")


function Engravings:Initialize()
	db = self:InitializeDB("EngravingsDB", nil, "global")
	for i,v in pairs(db.profile) do -- Upgrade old notes
		if type(v) == "table" then db.profile[i] = string.join("\n", unpack(v)) end
	end

	slash = self:InitializeSlashCommand("Engrave notes on your items", "ENGRAVINGS", "engrave")
	slash:RegisterSlashHandler("[link] <note>: Engrave an item, blank note erases saved engraving",
		"^|c.+|Hitem:(%d+):.+|h|r%s*(.*)", function(itemid, note)
			if note == "" then note = nil end
			if itemid then db.profile[tonumber(itemid)] = note end
	end)

	local p = presets
	presets = {}

	local f = function(v, ...)
		self:Debug(1, "Splitting preset", v, ...)
		for i=1,select("#", ...) do
			local id = select(i, ...)
			presets[tonumber(id)] = v
		end
	end

	for i,v in pairs(p) do
		if type(i) == "string" then f(v, string.split(" ", i))
		else presets[i] = v end
	end

	---- Hooks ----
	local orig1 = GameTooltip:GetScript("OnTooltipSetItem")
	GameTooltip:SetScript("OnTooltipSetItem", function(...)
		local name, link = GameTooltip:GetItem()
		self:ParseTooltip(GameTooltip, link)
		if orig1 then return orig1(...) end
	end)

	local orig2 = SetItemRef
	local function posthook(link, ...)
		if not strfind(link, "item") or IsControlKeyDown() or IsShiftKeyDown() then return ... end
		self:ParseTooltip(ItemRefTooltip, link)
		return ...
	end
	SetItemRef = function(link, ...)
		return posthook(link, orig2(link, ...))
	end
end


----------------------------
--      Main Methods      --
----------------------------

function Engravings:ParseTooltip(frame, link)
	local _, _, id = string.find(link or "", "item:(%d+):%d+:%d+:%d+")
	id = id and tonumber(id)
	local engraving = self:GetEngraving(id)
	if not engraving then return end
	self:Engrave(frame, string.split("\n", engraving))
	frame:Show()
end


function Engravings:Engrave(frame, ...)
	for i=1,select("#", ...) do
		frame:AddDoubleLine(i == 1 and "Engraving:" or " ", select(i, ...), R, G, B, R, G, B)
	end
end


function Engravings:GetEngraving(id)
	if not id then return end
	if db.profile[id] then return db.profile[id] end
	if presets[id] then return presets[id] end
end


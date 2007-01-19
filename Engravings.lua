
local slashsetup = {
	{
		option  = "Set",
		desc    = "Creates a new engraving.",
		method  = "SetNote"
	},
	{
		option  = "Clear",
		desc    = "Removes an engraving.",
		method  = "ClearNote"
	},
}

Engravings = {}
--~ 	cmd           = AceChatCmd:new({"/engrave"}, slashsetup),

local function debug(...)
	ChatFrame1:AddMessage(string.join(", ", ...))
end

function Engravings:Enable()
	if not EngravingsDB then EngravingsDB = {items = {}, sets = {}} end
	self.sv = EngravingsDB

	self.linkcache = {}
	setmetatable(self.linkcache, {__mode = "k"})
end


---------------------
--      Hooks      --
---------------------

local orig1 = GameTooltip:GetScript("OnTooltipSetItem")
GameTooltip:SetScript("OnTooltipSetItem", function(...)
	local name, link = GameTooltip:GetItem()
	Engravings:ParseTooltip(GameTooltip, link)
	return orig1(...)
end)


local orig2 = SetItemRef
local function posthook(link, ...)
	if not strfind(link, "item") or IsControlKeyDown() or IsShiftKeyDown() then return ... end
	Engravings:ParseTooltip(ItemRefTooltip, link)
	return ...
end
SetItemRef = function(link, ...)
	return posthook(link, orig2(link, ...))
end


-----------------------------
--      Slash Methods      --
-----------------------------

function Engravings:SetNote(msg)
	if msg == "" then return end

	local _, _, itemid, note = string.find(msg, "^|c.+|Hitem:(%d+):.+|h|r%s*(.*)$")

	if itemid then EngravingsDB.items[tonumber(itemid)] = note
	else
		local _, _, set, note = string.find(msg, "^(%S+)%s+(.*)$")
		if set then EngravingsDB.sets[set] = note end
	end
end


function Engravings:ClearNote(msg)
	if msg == "" then return end

	local _, _, itemid = string.find(msg, "item:(%d+)")

	if itemid then EngravingsDB.items[tonumber(itemid)] = nil
	else EngravingsDB.sets[msg] = nil end
end


----------------------------
--      Main Methods      --
----------------------------

function Engravings:ParseTooltip(frame, link)
	local _, _, id = string.find(link or "", "item:(%d+):%d+:%d+:%d+")
	id = id and tonumber(id)
	local engraving = self:GetEngraving(id)
	if engraving then
		if type(engraving) == "string" then
			frame:AddDoubleLine("Engraving:", engraving, 1, 136/255, 0, 1, 136/255, 0)
		elseif type(engraving) == "table" then
			for i,v in ipairs(engraving) do
				frame:AddDoubleLine(i == 1 and "Engraving:" or "", v, 1, 136/255, 0, 1, 136/255, 0)
			end
		end
	end
	frame:Show()
end


function Engravings:GetEngraving(id)
	if not id then return end
	if EngravingsDB.items[id] then return EngravingsDB.items[id] end
	if self.presets and self.presets[id] then return self.presets[id] end
end


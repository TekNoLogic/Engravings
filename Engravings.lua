
local slash, db
local presets = Engravings_presets
Engravings_presets = nil


local R, G, B = 1, 136/255, 0

Engravings = DongleStub("Dongle-1.0"):New("Engravings")


local p = presets
presets = {}

local f = function(v, ...)
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
	Engravings:ParseTooltip(GameTooltip, link)
	if orig1 then return orig1(...) end
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

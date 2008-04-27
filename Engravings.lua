
local presets = Engravings_presets
Engravings_presets = nil


Engravings = {}
local sources = Engravings

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


local origs = {}
local R, G, B = 1, 136/255, 0
local function OnTooltipSetItem(frame, ...)
	local name, link = frame:GetItem()
	local id = tonumber(link:match("item:(%d+):"))
	for title,data in pairs(sources) do if data[id] then frame:AddDoubleLine(type(title) == "string" and title or "", data[id], R, G, B, R, G, B) end end
	if origs[frame] then return origs[frame](frame, ...) end
end
for _,frame in pairs{GameTooltip, ItemRefTooltip} do
	origs[frame] = frame:GetScript("OnTooltipSetItem")
	frame:SetScript("OnTooltipSetItem", OnTooltipSetItem)
end



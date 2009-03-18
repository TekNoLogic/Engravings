
Engravings = {}
local sources = Engravings
local origs = {}
local R, G, B = 1, 136/255, 0
local db


local function OnTooltipSetItem(frame, ...)
	if not db then EngravingsDB2 = EngravingsDB2 or {}; db = EngravingsDB2 end
	local name, link = frame:GetItem()
	if link then
		local id = tonumber(link:match("item:(%d+):"))
		for title,data in pairs(sources) do if not db[title] and data[id] then frame:AddDoubleLine(type(title) == "string" and title or "", data[id], R, G, B, R, G, B) end end
	end
	if origs[frame] then return origs[frame](frame, ...) end
end


for _,frame in pairs{GameTooltip, ItemRefTooltip, ShoppingTooltip1, ShoppingTooltip2} do
	origs[frame] = frame:GetScript("OnTooltipSetItem")
	frame:SetScript("OnTooltipSetItem", OnTooltipSetItem)
end

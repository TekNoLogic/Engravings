
Engravings = {}
local sources = Engravings
local origs = {}
local R, G, B = 1, 136/255, 0
local db, dbpc, sortedtitles

local function initdb()
	EngravingsDB2, EngravingsDBPC = EngravingsDB2 or {}, EngravingsDBPC or {}
	for title in pairs(sources) do if title:match("^Wowhead score") and EngravingsDB2[title] then EngravingsDBPC[title], EngravingsDB2[title] = EngravingsDB2[title], nil end end
	return EngravingsDB2, EngravingsDBPC
end
Engravings.initdb = initdb

local function OnTooltipSetItem(frame, ...)
	if not db then db, dbpc = initdb() end
	if not sortedtitles then
		sortedtitles = {}
		for title,data in pairs(sources) do table.insert(sortedtitles, title) end
		table.sort(sortedtitles, function(a,b) return string.lower(a) < string.lower(b) end)
	end

	local name, link = frame:GetItem()
	if link then
		local id = tonumber(link:match("item:(%d+):"))
		for i,title in pairs(sortedtitles) do
			local data = sources[title]
			if not (db[title] or dbpc[title]) and data[id] then frame:AddDoubleLine(type(title) == "string" and title or "", data[id], R, G, B, R, G, B) end
		end
	end
	if origs[frame] then return origs[frame](frame, ...) end
end


for _,frame in pairs{GameTooltip, ItemRefTooltip, ShoppingTooltip1, ShoppingTooltip2} do
	origs[frame] = frame:GetScript("OnTooltipSetItem")
	frame:SetScript("OnTooltipSetItem", OnTooltipSetItem)
end

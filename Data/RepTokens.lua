
local TOKENS = [[
24401 Cenarion Expedition (250 per 10)
24449 Sporeggar (750 per 10)
24291 Sporeggar (750 per 6)
29425 The Aldor (25 each)
30809 The Aldor (25 each)
29740 The Aldor (350 each)
29739 The Scryers (350 each)
29426 The Scryers (25 each)
30810 The Scryers (25 each)
25463 Consortium (250 per 3)
29209 Consortium (250 per 10)
25433 Consortium, Mag'har, Kurenai (250/500/500 per 10)
25719 Lower City (250 per 30)
24245 Sporeggar (75 per 10)
]]
Engravings["Faction Rep:"] = setmetatable({}, {
	__index = function(t,i)
		local v = TOKENS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

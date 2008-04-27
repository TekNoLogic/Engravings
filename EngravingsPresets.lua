
---------------------------------------
--      Incorrect recipe colors      --
---------------------------------------

local VENDOR_RECIPES = " 12703 23151 288291 23147 23153 6377 11223 11163 11101 6346 6342 11039 7451 7361 5789 8409 13288 13287 5788 9301 14634 23574 "
local DROPPED_RECIPES = " 3393 3394 3931 6211 17709 "
Engravings["Recipe source:"] = setmetatable({}, {
	__index = function(t,i)
		if VENDOR_RECIPES:match(" "..i.." ") then t[i] = "Vendor"; return "Vendor"
		elseif DROPPED_RECIPES:match(" "..i.." ") then t[i] = "Mob-drop"; return "Mob-drop"
		else t[i] = false; return end
	end
})


----------------------------------
--      Faction currencies      --
----------------------------------

local CURRENCIES = [[
24579 Honor Hold
24581 Thrallmar
24245 Sporeggar
29735 The Aldor
29736 The Scryers
26045 Halaa
26044 Halaa
]]
Engravings["Currency:"] = setmetatable({}, {
	__index = function(t,i)
		local v = CURRENCIES:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})


---------------------------------
--      Reputation tokens      --
---------------------------------

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

Engravings["iLevel:"] = setmetatable({}, {__index = function(t,i) local _, _, _, ilvl = GetItemInfo(i); t[i] = ilvl; return ilvl end})
Engravings["Stack size:"] = setmetatable({}, {__index = function(t,i) local _, _, _, _, _, _, _, stack = GetItemInfo(i); t[i] = stack; return stack end})
Engravings["ItemID:"] = setmetatable({}, {__index = function(t,i) t[i] = i; return i end})

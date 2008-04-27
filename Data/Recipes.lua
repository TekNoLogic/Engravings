
local VENDOR_RECIPES = " 12703 23151 288291 23147 23153 6377 11223 11163 11101 6346 6342 11039 7451 7361 5789 8409 13288 13287 5788 9301 14634 23574 "
local DROPPED_RECIPES = " 3393 3394 3931 6211 17709 "
Engravings["Recipe source:"] = setmetatable({}, {
	__index = function(t,i)
		if VENDOR_RECIPES:match(" "..i.." ") then t[i] = "Vendor"; return "Vendor"
		elseif DROPPED_RECIPES:match(" "..i.." ") then t[i] = "Mob-drop"; return "Mob-drop"
		else t[i] = false; return end
	end
})

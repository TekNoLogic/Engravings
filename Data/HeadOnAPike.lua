
local HEAD_ON_A_PIKE = [[
28790 Magtheridon
28791 Magtheridon
28792 Magtheridon
28793 Magtheridon
30007 Kael'thas Sunstrider
30015 Kael'thas Sunstrider
30017 Kael'thas Sunstrider
30018 Kael'thas Sunstrider
]]

Engravings["Head-on-a-pike:"] = setmetatable({}, {
	__index = function(t,i)
		local v = HEAD_ON_A_PIKE:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

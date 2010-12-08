
local COOKING = [[
1015 +6 Stam/Spi
1080 +6 Stam/Spi
1081 +6 Stam/Spi
12037 +8 Stam/Spi
12184 +8 Stam/Spi
12202 +8 Stam/Spi
12203 +8 Stam/Spi
12204 +12 Stam/Spi
12205 +12 Stam/Spi
12206 +12 Stam/Spi
12207 +12 Stam/Spi
12208 +12 Stam/Spi
12223 +2 Stam/Spi
1468 +6 Stam/Spi
18255 +10 Int
20424 +20 Str
2251 +6 Stam/Spi
22644 +4 Stam/Spi
23676 +2 Stam/Spi
24477 +20 Stam/Spi
2672 +2 Stam/Spi
2673 +4 Stam/Spi
2674 +4 Stam/Spi
2677 +4 Stam/Spi
27425 +20 Stam/Spi
27439 +20 Stam/Spi
27515 +20 Stam/Spi
27668 +2 Stam/Spi
27669 +4 Stam/Spi
27671 +20 Stam/Spi
27676 +20 Stam/Spi
27682 +20 Stam/Spi
2886 +2 Stam/Spi
2924 +4 Stam/Spi
31670 +20 Stam/Spi
3172 +4 Stam/Spi
3173 +4 Stam/Spi
3174 +4 Stam/Spi
3404 +8 Stam/Spi
35562 +24 AP or +14 SP
3667 +6 Stam/Spi or +8 Stam/Spi
3685 +6 Stam/Spi
3712 +8 Stam/Spi
3730 +6 Stam/Spi
3731 +6 Stam/Spi or +8 Stam/Spi
41801 +40 Stam/Spi
4655 +8 Stam/Spi
5465 +2 Stam/Spi
5467 +2 Stam/Spi
5468 +4 Stam/Spi
5469 +4 Stam/Spi
5470 +6 Stam/Spi
5471 +6 Stam/Spi
5503 +4 Stam/Spi
5504 +6 Stam/Spi
6889 +2 Stam/Spi
723 +4 Stam/Spi
7974 +24 AP/+14 SP
]]


Engravings["Cooked:"] = setmetatable({}, {
	__index = function(t,i)
		local v = COOKING:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

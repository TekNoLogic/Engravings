
local RAWFOODS = [[
2672 No bonus or +2 Stam/Spi
6889 +2 Stam/Spi or Cake
23676 +2 Stam/Spi
22644 +4 Stam/Spi
24477 +20 Stam/Spi
27422 No bonus
27425 +20 Stam/Spi
27429 +20 Stam/+8 MP5
27435 +20 Agi/Spi
27437 +23 Damage/+20 Spi
27438 +44 Heal/+20 Spi
27439 +30 Stam/+20 Spi
27515 +30 Stam/+20 Spi
27516 No Bonus
27668 +2 Stam/Spi
27669 +4 Stam/Spi
27671 +20 Stam/Spi or Pet Treat
27674 +40 AP/+20 Spi
27676 Pet Treat
27677 +23 Damage/Spi
27678 +20 Str/Spi or Stormchops
27681 +20 Agi/Spi
27682 +20 Hit/Spi or +20 Sta/Spi
31670 +20 Stam/Spi
31671 +23 Damage/+20 Spi
33823 +8 Resist
33824 +20 Spell Crit/Spi
35562 +24 AP or +14 Damage+Heal
]]

Engravings["Cooked:"] = setmetatable({}, {
	__index = function(t,i)
		local v = RAWFOODS:match("\n"..i.." ([^\n]+)\n")
		if v then
			t[i] = v
			return v
		else
			t[i] = false
			return
		end
	end
})


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
34736 Feast or Last Week's Mammoth or +80 AP/+40 Stam
35562 +24 AP or +14 Damage+Heal
43009 Feast or Tracker Snacks or +46 SP/+40 Stam
43010 Feast or +40 Crit/Stam 0r +40 Expt/Stam
43012 Feast or +40 Crit/Stam or +40 Stam/Spi or +40 Expt/Stam
43013 Feast or Critter Bites
43501 Tasty Cupcake
53072 +90 Int/Stam or or +90 Stam/Spi
62778 Barbeque
62779 +60 Hit/Stam
62781 +60 Agi/Stam
62782 Feast or +90 Hit/Stam
62783 +90 Haste/Stam
62784 +90 Expt/Stam or +90 Str/Stam
62791 +60 Str/Stam or +60 Stam/Spi
]]

Engravings["Cooking:"] = setmetatable({}, {
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

TEKKRAWFOODS = RAWFOODS
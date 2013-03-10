
local myname, ns = ...
local _, myclass = UnitClass("player")


local AXE1, AXE2, BOW, GUN, MACE1, MACE2, POLE, SWORD1, SWORD2, STAFF, FIST,
	_, DAGGER, THROWN, CROSSBOW, WAND, FISHPOLE = GetAuctionItemSubClasses(1)
local MISC, CLOTH, LEATHER, MAIL, PLATE, _, SHIELD = GetAuctionItemSubClasses(2)


if myclass == 'DEATHKNIGHT' then
	ns.classgear = {
		[AXE1] = true,
		[AXE2] = true,
		[MACE1] = true,
		[MACE2] = true,
		[SWORD1] = true,
		[SWORD2] = true,
		[POLE] = true,
		[PLATE] = true,
		[MISC] = true,
	}
end

if myclass == 'DRUID' then
	ns.classgear = {
		[MACE1] = true,
		[MACE2] = true,
		[POLE] = true,
		[STAFF] = true,
		[FIST] = true,
		[DAGGER] = true,
		[LEATHER] = true,
		[MISC] = true,
	}
end

if myclass == 'HUNTER' then
	ns.classgear = {
		[AXE1] = true,
		[AXE2] = true,
		[SWORD1] = true,
		[SWORD2] = true,
		[POLE] = true,
		[STAFF] = true,
		[FIST] = true,
		[DAGGER] = true,
		[BOW] = true,
		[GUN] = true,
		[CROSSBOW] = true,
		[MAIL] = true,
		[MISC] = true,
	}
end

if myclass == 'MAGE' then
	ns.classgear = {
		[SWORD1] = true,
		[STAFF] = true,
		[DAGGER] = true,
		[WAND] = true,
		[CLOTH] = true,
		[MISC] = true,
	}
end

if myclass == 'MONK' then
	ns.classgear = {
		[AXE1] = true,
		[MACE1] = true,
		[SWORD1] = true,
		[POLE] = true,
		[STAFF] = true,
		[FIST] = true,
		[LEATHER] = true,
		[MISC] = true,
	}
end

if myclass == 'PALADIN' then
	ns.classgear = {
		[AXE1] = true,
		[AXE2] = true,
		[MACE1] = true,
		[MACE2] = true,
		[SWORD1] = true,
		[SWORD2] = true,
		[POLE] = true,
		[SHIELD] = true,
		[PLATE] = true,
		[MISC] = true,
	}
end

if myclass == 'PRIEST' then
	ns.classgear = {
		[MACE1] = true,
		[STAFF] = true,
		[DAGGER] = true,
		[WAND] = true,
		[CLOTH] = true,
		[MISC] = true,
	}
end

if myclass == 'ROGUE' then
	ns.classgear = {
		[AXE1] = true,
		[MACE1] = true,
		[SWORD1] = true,
		[FIST] = true,
		[DAGGER] = true,
		[BOW] = true,
		[GUN] = true,
		[CROSSBOW] = true,
		[LEATHER] = true,
		[MISC] = true,
	}
end

if myclass == 'SHAMAN' then
	ns.classgear = {
		[AXE1] = true,
		[AXE2] = true,
		[MACE1] = true,
		[MACE2] = true,
		[STAFF] = true,
		[FIST] = true,
		[DAGGER] = true,
		[SHIELD] = true,
		[MAIL] = true,
		[MISC] = true,
	}
end

if myclass == 'WARLOCK' then
	ns.classgear = {
		[SWORD1] = true,
		[STAFF] = true,
		[DAGGER] = true,
		[WAND] = true,
		[CLOTH] = true,
		[MISC] = true,
	}
end

if myclass == 'WARRIOR' then
	ns.classgear = {
		[AXE1] = true,
		[AXE2] = true,
		[MACE1] = true,
		[MACE2] = true,
		[SWORD1] = true,
		[SWORD2] = true,
		[POLE] = true,
		[STAFF] = true,
		[FIST] = true,
		[DAGGER] = true,
		[BOW] = true,
		[GUN] = true,
		[CROSSBOW] = true,
		[SHIELD] = true,
		[PLATE] = true,
		[MISC] = true,
	}
end

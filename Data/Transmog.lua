
local myname, ns = ...


function ns.OnLoads.Transmog()
	ns.db.appearances = ns.db.appearances or {}

	C_TransmogCollection.ClearSearch()
	for id=1,28 do
		appearances = C_TransmogCollection.GetCategoryAppearances(id)
		for i,appearance in pairs(appearances) do
			if appearance.isCollected then
				ns.db.appearances[appearance.visualID] = true
			end
		end
	end

	ns.OnLoadTransmog = nil
end


local COLLECTED = GREEN_FONT_COLOR_CODE.."Collected"
local NOT_COLLECTED = "|cff87aaffNot collected"
Engravings["Transmog:"] = setmetatable({}, {
	__index = function(t,i)
		local visualid = Engravings["VisualID:"][i]
		if not visualid then return end

			t[i] = COLLECTED
			return COLLECTED
		else
			t[i] = NOT_COLLECTED
			return NOT_COLLECTED
		end
	end
})

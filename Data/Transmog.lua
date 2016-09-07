
local myname, ns = ...


function ns.OnLoads.Transmog()
	ns.db.appearances = ns.db.appearances or {}
	ns.TRANSMOG_COLLECTION_UPDATED()
end


local data = {}
function ns.TRANSMOG_COLLECTION_UPDATED()
	wipe(data)
	C_TransmogCollection.ClearSearch()
	for id=1,28 do
		appearances = C_TransmogCollection.GetCategoryAppearances(id)
		for i,appearance in pairs(appearances) do
			if appearance.isCollected then
				ns.db.appearances[appearance.visualID] = true
			end
		end
	end
end
ns.RegisterEvent("TRANSMOG_COLLECTION_UPDATED")


local COLLECTED = GREEN_FONT_COLOR_CODE.."Collected"
local NOT_COLLECTED = "|cff87aaffNot collected"
Engravings["Transmog:"] = setmetatable(data, {
	__index = function(t,i)
		local visualid = Engravings["VisualID:"][i]
		if not visualid then return end

		if ns.db.appearances[visualid] then
			t[i] = COLLECTED
			return COLLECTED
		else
			t[i] = NOT_COLLECTED
			return NOT_COLLECTED
		end
	end
})

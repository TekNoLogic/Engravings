
local myname, ns = ...


Engravings["VisualID:"] = setmetatable({}, {
	__index = function(t,i)
		local sourceid = Engravings["SourceID:"][i]
		if not sourceid then return end

		local _, visualid = C_TransmogCollection.GetAppearanceSourceInfo(sourceid)
		if visualid then
			t[i] = visualid
			return visualid
		end
	end
})

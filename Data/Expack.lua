
local MAP = {
	"BC",
	"Wrath",
	"Cata",
	"Panda",
	"Draenor",
	"Legion",
}


Engravings["Expansion:"] = setmetatable({}, {
	__index = function(t,i)
		local expack_id = select(15, GetItemInfo(i))
		local v = expack_id and MAP[expack_id] or false
		t[i] = v
		return v
	end
})


local myname, ns = ...


local voidmeta = {}
Engravings["Qty in void storage:"] = setmetatable({}, voidmeta)


function ns.OnLoad()
	ns.dbpc.void = ns.dbpc.void or {}
	voidmeta["__index"] = ns.dbpc.void
	ns.OnLoadTransmog()
end


local NUMPAGES, NUMSLOTS = 2, 80
function ns.VOID_STORAGE_OPEN()
	if not IsVoidStorageReady() then return end

	wipe(ns.dbpc.void)

	for i=1,NUMPAGES do
		for j=1,NUMSLOTS do
			local id = GetVoidItemInfo(i, j)
			if id then
				ns.dbpc.void[id] = (ns.dbpc.void[id] or 0) + 1
			end
		end
	end
end
ns.RegisterEvent("VOID_STORAGE_OPEN")
ns.RegisterEvent("VOID_STORAGE_UPDATE", ns.VOID_STORAGE_OPEN)
ns.RegisterEvent("VOID_TRANSFER_DONE", ns.VOID_STORAGE_OPEN)


local myname, ns = ...


ns.OnLoads = {}


function ns.OnLoad()
  for _,func in pairs(ns.OnLoads) do func() end
  ns.OnLoads = nil
end

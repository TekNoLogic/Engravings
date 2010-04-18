#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'


wh = Wowhead.new

npcs = []
zones = []
dds = ["", " (10N)", " (25N)", " (10H)", " (25H)"]
zone_names = wh.get_variable("/js/locale_enus.js?787", "g_zones")
tokens = wh.get("/items=15.-2&filter=minle=61")
tokens.each do |i|
  items = wh.get("/item=#{i["id"]}", "currency-for").map {|j| j["id"]}

  npc_names = i["sourcemore"].map {|s| s["n"]}.compact.reject {|name| name == "Lady Sacrolash" || name == "Grand Warlock Alythess"}
  name = (npc_names.include?("Lady Malande") ? "Illidari Council" : npc_names.first) unless npc_names.compact.empty?
  npcs += items.map {|j| "#{j} #{name}"} unless name.nil?

  if i["sourcemore"]
    zone_id = i["sourcemore"].reject {|s| s["n"].nil?}.map {|s| s["z"]}.first
    zone_dd = i["sourcemore"].reject {|s| s["n"].nil?}.map {|s| s["dd"]}.first
    dd = dds[zone_dd.to_i] unless zone_dd.nil?
    zones += items.map {|j| "#{j} #{zone_names[zone_id.to_s]}#{dd}"} unless zone_id.nil?
  end
end

Engravings.export("ArmorTokenDropNPCs.lua", "ARMOR_TOKEN_NPCS", "Token dropped by:", npcs)
Engravings.export("ArmorTokenDropLocations.lua", "ARMOR_TOKEN_ZONES", "Token dropped in:", zones)

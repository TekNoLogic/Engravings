#!/usr/bin/env ruby

require 'wowhead'
require 'engravings'


wh = Wowhead.new
tokens = wh.get("/?items=15.-2").map {|i| i["id"]}

token_sources = []
token_zones = []
tokens.each do |itemid|
  puts "\nQuerying #{itemid}"

  buys = wh.get("/?item=#{itemid}", "currency-for").map {|i| i["id"]} rescue []
  dropped_by = wh.get("/?item=#{itemid}", "dropped-by")
  next unless dropped_by
  npc_names = dropped_by.map {|i| i["name"]} - ["Lady Sacrolash", "Grand Warlock Alythess"]
  npc_names -= ["Gluth"] if npc_names.size > 1
  npc_name = npc_names.include?("Lady Malande") ? "Illidari Council" : npc_names.first
  drop_zone = dropped_by.map {|i| i["location"]}.flatten.uniq.map {|zid| wh.zone_name(zid)}.first

  token_zones += buys.map {|id| "#{id} #{drop_zone}"}
  token_sources += buys.map {|id| "#{id} #{npc_name}"} unless itemid == 47242 # Don't include Trophy of the Crusade boss names
end

Engravings.export("TierArmorTokenDropLocations.lua", "TIER_ARMOR_TOKEN_ZONES", "Token dropped in:", token_zones)
Engravings.export("TierArmorTokenDropNPCs.lua", "TIER_ARMOR_TOKEN_NPCS", "Token dropped by:", token_sources)

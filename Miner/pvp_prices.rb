#!/usr/bin/env ruby

require 'wowhead'
require 'engravings'


wh = Wowhead.new
vendors = wh.get("/?search=quartermaster", "npcs").reject {|i| i["location"].nil? || (i["location"] & [1519,1637]).empty?}.reject {|i| i["tag"] =~ /Cloth/}.map {|i| [i["name"], i["id"]]}
vendors = vendors.map {|name,id| vendors.reject {|name2,id2| name2 != name}.map {|name2,id2| id2}}.map {|v| v.max}.uniq
vendors += wh.get("/?search=arena", "npcs").reject {|i| i["location"].nil? || !i["location"].include?(4395)}.reject {|i| !(i["tag"] =~ /(Vendor|Weapon)/)}.map {|i| i["id"]}
vendors -= [16786] # Stupid ol' Argent Quartermaster <The Argent Dawn>

prices = []
vendors.each do |npcid|
  puts "\nQuerying #{npcid}"

  page = wh.fetch_page("/?npc=#{npcid}")
  sells = wh.get("/?npc=#{npcid}", "sells") rescue []
  next if sells.nil? || sells.empty?
  prices += sells.map {|v| Engravings.get_price(v["id"], v["cost"], page)}
end

Engravings.export("PvPCosts.lua", "PVP_COSTS", "PvP:", prices)





# 34092 Trapjaw Rix <Exceptional Arena Weaponry>
# 33925 Zom Bocom <Apprentice Arena Vendor>
# 33926 Xazi Smolderpipe <Arena Vendor>
# 33927 Nargle Lashcord <Veteran Arena Vendor>

# 12781 Master Sergeant Biggins <Accessories Quartermaster>
# 12783 Lieutenant Karter <War Mount Quartermaster>
# 12784 Lieutenant Jackspring <Legacy Weapon Quartermaster>
# 12785 Sergeant Major Clate <Legacy Armor Quartermaster>
# 12778 Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
# 34077 Lieutenant Tristia <Veteran Armor Quartermaster>
# 34080 Captain O'Neal <Jewelcrafting Quartermaster>
# 34083 Knight-Lieutenant Moonstrike <Armor Quartermaster>
# 34074 Captain Dirgehammer <Apprentice Armor Quartermaster>

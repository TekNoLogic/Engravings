#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'


# MANUAL_IMPORT = {
#   "Normal Instances" => {
#     "The Arcatraz" => [31747, 31748, 31749],
#     "Shadow Labyrinth" => [28176, 28177, 28178, 28179, 28167, 28170, 28171, 28174],
#     "The Mechanar" => [28248, 28249, 28250, 28251, 28252], ## Cache of the Legion
#   },
# }
#

EXCLUDE = [29434, 40752, 40753]


wh = Wowhead.new

tokens = wh.get("/items=10").map {|i| i["id"]}

zone_ids = wh.get("/zones=2", "zones").map {|z| z["id"]} + wh.get("/zones=3", "zones").map {|z| z["id"]}
puts "Found #{zone_ids.size} instances"

instance_drops = []
boss_drops = []
boss_ids = []
zone_drops = {}
zone_ids.each do |zone_id|
  puts "\nQuerying zone #{zone_id}"
  page = "/zone=#{zone_id}"
  res = wh.fetch_page page

  next unless res =~ /<h1><span class="(?:bc|wotlk)-icon">(.*)<\/span><\/h1>/

  name = $1
  name = name[/: (.*)/, 1] if name =~ /:/

  boss_ids += (wh.get(page, "npcs").select {|b| b["boss"] == 1}.map {|b| [b["id"], zone_id, b["name"]]} rescue [])
  normal_drops = (wh.get(page, "normal-drops").map {|i| i["id"]} - tokens rescue [])
  heroic_drops = (wh.get(page, "heroic-drops").map {|i| i["id"]} - tokens rescue [])
  normal_10_drops = (wh.get(page, "normal-10-drops").map {|i| i["id"]} - tokens rescue [])
  normal_25_drops = (wh.get(page, "normal-25-drops").map {|i| i["id"]} - tokens rescue [])
  heroic_10_drops = (wh.get(page, "heroic-10-drops").map {|i| i["id"]} - tokens rescue [])
  heroic_25_drops = (wh.get(page, "heroic-25-drops").map {|i| i["id"]} - tokens rescue [])

  normal_only = normal_drops - heroic_drops
  heroic_only = heroic_drops - normal_drops
  both_drops = heroic_drops - heroic_only

  drops = (wh.get(page, "drops").map {|i| i["id"]} - tokens rescue [])

  all_drops = drops + normal_only + heroic_only + both_drops + normal_10_drops + normal_25_drops + heroic_10_drops + heroic_25_drops
  zone_drops[zone_id] = all_drops

  formatted_drops = []
  formatted_drops += normal_10_drops.map {|id| "#{id} #{name} (10)"}
  formatted_drops += normal_25_drops.map {|id| "#{id} #{name} (25)"}
  formatted_drops += heroic_10_drops.map {|id| "#{id} #{name} (10H)"}
  formatted_drops += heroic_25_drops.map {|id| "#{id} #{name} (25H)"}
  formatted_drops += normal_only.map {|id| "#{id} #{name} (Normal)"}
  formatted_drops += heroic_only.map {|id| "#{id} #{name} (Heroic)"}
  formatted_drops += both_drops.map {|id| "#{id} #{name}"}
  formatted_drops += drops.map {|id| "#{id} #{name}"}

  instance_drops += formatted_drops
end

boss_ids.each do |npc_id, zone_id, name|
  puts "\nQuerying NPC #{name}"
  page = "/npc=#{npc_id}"

  all_drops = (wh.get(page, "normal-drops").map {|i| i["id"]} - tokens rescue [])
  all_drops += (wh.get(page, "heroic-drops").map {|i| i["id"]} - tokens rescue [])
  all_drops += (wh.get(page, "normal-10-drops").map {|i| i["id"]} - tokens rescue [])
  all_drops += (wh.get(page, "normal-25-drops").map {|i| i["id"]} - tokens rescue [])
  all_drops += (wh.get(page, "heroic-10-drops").map {|i| i["id"]} - tokens rescue [])
  all_drops += (wh.get(page, "heroic-25-drops").map {|i| i["id"]} - tokens rescue [])
  all_drops += (wh.get(page, "drops").map {|i| i["id"]} - tokens rescue [])
  all_drops -= (all_drops - zone_drops[zone_id])
  boss_drops += all_drops.map {|id| "#{id} #{name}"}
end

Engravings.export("DropLocations.lua", "DROP_LOCATIONS", "Drops in:", instance_drops)
Engravings.export("DropNPCs.lua", "DROP_NPC", "Dropped by:", boss_drops.uniq)


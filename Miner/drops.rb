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
zone_ids = wh.get("/?zones=2", "zones").map {|z| z["id"]} + wh.get("/?zones=3", "zones").map {|z| z["id"]}
puts "Found #{zone_ids.size} instances"

instance_drops = []
boss_drops = []
boss_ids = []
zone_ids.each do |zone_id|
  puts "\nQuerying zone #{zone_id}"
  page = "/?zone=#{zone_id}"
  res = wh.fetch_page page

  next unless res =~ /<h1><span class="(?:bc|wotlk)-icon">(.*)<\/span><\/h1>/

  name = $1
  name = name[/: (.*)/, 1] if name =~ /:/

  imports = 0

  boss_ids += (wh.get(page, "bosses").map {|b| b["id"]} rescue [])
  normal_drops = (wh.get(page, "normal-drops").map {|i| i["id"]} rescue [])
  heroic_drops = (wh.get(page, "heroic-drops").map {|i| i["id"]} rescue [])

  normal_10_drops = (wh.get(page, "normal-10-drops").map {|i| i["id"]} rescue [])
  normal_25_drops = (wh.get(page, "normal-25-drops").map {|i| i["id"]} rescue [])
  heroic_10_drops = (wh.get(page, "heroic-10-drops").map {|i| i["id"]} rescue [])
  heroic_25_drops = (wh.get(page, "heroic-25-drops").map {|i| i["id"]} rescue [])

  normal_only = normal_drops - heroic_drops
  heroic_only = heroic_drops - normal_drops
  both_drops = heroic_drops - heroic_only

  drops = (wh.get(page, "drops").map {|i| i["id"]} rescue [])

  all_drops = []
  all_drops += normal_only
  all_drops += heroic_only
  all_drops += both_drops
  all_drops += drops

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

# boss_ids.each do |npc_id|
#   boss_drops += parse_npc(http, npc_id, val[2])} unless val[0].nil?
  # puts "\nQuerying NPC #{npc_id}"
  # res = http.get "/?npc=#{npc_id}"
  #
  # name = $1 if res.body =~ /<h1>(.*) - NPC - World of Warcraft<\/h1>/
  # #~ name = $1
  # #~ name = name[/: (.*)/, 1] if name =~ /:/
  # puts "  Found npc '#{name}'"
  #
  # imports = 0
  #
  # normal_drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'normal-drops'(.*)/
  # heroic_drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'heroic-drops'(.*)/
  # drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'drops'(.*)/
  #
  # all_drops = []
  # all_drops += normal_drops unless normal_drops.nil?
  # all_drops += heroic_drops unless heroic_drops.nil?
  # all_drops += drops unless drops.nil?
  #
  # all_drops -= (all_drops - zone_drops)
  # puts "    Found #{all_drops.size} items"
  # all_drops.map {|id| "#{id} #{name}"}
# end

Engravings.export("DropLocations.lua", "DROP_LOCATIONS", "Drops in:", instance_drops)
# Engravings.export("DropNPCs.lua", "DROP_NPC", "Dropped by:", boss_drops.uniq)


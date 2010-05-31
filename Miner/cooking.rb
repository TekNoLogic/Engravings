#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'

manual_entries = [
  "7974 +24 AP/+14 SP",
  "18255 +10 Int",
  "20424 +20 Str",
  "35562 +24 AP or +14 SP"
]

wh = Wowhead.new
item_map = {}

vendor_items = wh.get("/items?filter=cr=87:92;crs=3:1;crv=0:0;gb=0").map {|i| i["id"]} - [5051, 12037]

recipies = wh.get("/spells=9.185", "spells")
recipies.reject {|r| r["reagents"].nil?}.each do |recipie|
  recipie["reagents"].each do |reagent|
    reagent = reagent.first
    next if vendor_items.include? reagent
    item_map[reagent] ||= []
    item_map[reagent] << recipie["creates"].first
  end
end


ss_food = wh.get("/items=0.5?filter=cr=24:22:86;crs=1:1:11;crv=0:0:0#0+2+1")
ss_food_map = Hash[*ss_food.map {|ss| [ss["id"], "+#{ss["spi"]} Stam/Spi"]}.flatten]

ingreds = item_map.to_a.map {|i,rs| [i, rs.map {|r| ss_food_map[r]}.compact.uniq]}.reject {|i,rs| rs.empty?}.map {|i,rs| "#{i} #{rs.join(" or ")}"} + manual_entries
Engravings.export("Cooking.lua", "COOKING", "Cooked:", ingreds)

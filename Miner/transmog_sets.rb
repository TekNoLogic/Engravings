#!/usr/bin/env ruby

require "./wowhead"
require "./engravings_exporter"


wh = Wowhead.new
pieces = []
# set_notes = wh.get_variable("/js/locale_enus.js?787", "g_itemset_notes")
sets = wh.get_variable("/transmog-sets", "transmogSets", true, false)


$recolors = {}
$val_names = ["A", "B", "C", "D", "E", "F"]
def recolor(title)
  return title unless title.match(/ \((Recolor|Lookalike)\)\z/)

  tag_type = $1
  base_title = title.gsub(/ \(#{tag_type}\)/, "")
  val = $recolors[base_title] || 0
  $recolors[base_title] = val + 1

  raise "No value #{val}" unless $val_names[val]
  "#{base_title} (#{tag_type} #{$val_names[val]})"
end


set_names = []
set_ids = []
sets.each do |tset|
  id = tset["id"]
  name = recolor tset["name"][1..-1]

  puts "Fetching transmog set: #{id} #{name}"

  begin
    page = wh.fetch_page "/transmog-set=#{id}"
    ids = page.scan(/appendChild\(g_items\.createIcon\((\d+),/).flatten
    ids.each do |itemid|
      set_names << "#{itemid} #{name}"
      set_ids << "#{itemid} #{id}"
    end
  rescue ArgumentError => err
    puts "ERROR SCANNING PAGE"
  end
end



# (1..11).each do |class_i|
#   next if class_i == 10
#   wh.get("/itemsets&filter=cl=#{class_i}", "itemsets").reject {|i| i["note"].nil?}.each {|i| i["pieces"].each {|piece| pieces << "#{piece} #{set_notes[i["note"].to_s].gsub(/ Set/, '') + (i["heroic"] == 1 ? " (Heroic)" : '')}"}}
# end

Engravings.export("TransmogSets.lua", "TRANSMOG_SETS", "Transmog set:", set_names)
Engravings.export("TransmogSetIDs.lua", "TRANSMOG_SET_IDS", "Transmog set ID:", set_ids)

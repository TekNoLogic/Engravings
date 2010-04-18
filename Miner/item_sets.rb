#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'


wh = Wowhead.new
pieces = []
set_notes = wh.get_variable("/js/locale_enus.js?787", "g_itemset_notes")

(1..11).each do |class_i|
  next if class_i == 10
  wh.get("/itemsets&filter=cl=#{class_i}", "itemsets").reject {|i| i["note"].nil?}.each {|i| i["pieces"].each {|piece| pieces << "#{piece} #{set_notes[i["note"].to_s].gsub(/ Set/, '') + (i["heroic"] == 1 ? " (Heroic)" : '')}"}}
end
Engravings.export("ItemSetNames.lua", "ITEM_SET_NAMES", "Item set:", pieces.uniq)

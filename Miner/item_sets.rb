#!/usr/bin/env ruby

require 'wowhead'
require 'engravings'


wh = Wowhead.new
sets = wh.get("/?itemsets", "itemsets")
notes = wh.get_variable("/js/locale_enus.js?374", "g_itemset_notes")
item_sets = sets.reject {|i| i["note"].nil?}.map {|i| i["pieces"].map {|id| "#{id} #{notes[i["note"].to_s].gsub(/ Set/, "")}"}}.flatten

Engravings.export("ItemSetNames.lua", "ITEM_SET_NAMES", "Item set:", item_sets)


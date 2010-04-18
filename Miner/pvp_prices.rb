#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'
require 'engravings_pricer'


wh = Wowhead.new
body = wh.fetch_page "/zone=440"
vendors = wh.get("/zone=440", "npcs").select {|n| n["tag"] =~ /Arena/}.map {|n| n["id"]}
prices = vendors.map {|v| wh.get("/npc=#{v}", "sells")}.compact.flatten.map {|i| Engravings.get_price(i["id"], i["cost"], body)}
Engravings.export("PvPCosts.lua", "PVP_COSTS", "PvP:", prices)

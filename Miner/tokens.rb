#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'


def get_icon(id, body)
  "Interface\\Icons\\#{$1}" if body =~ /\[#{id}\]=\{[^{]*icon:'([^;]+)'\};/
end


def get_price(id, cost, body)
  str = id.to_s

  cash = cost[0].to_i
  gold = (cash / 10000).floor
  # silver = ((cash % 10000)/100).floor
  # copper = cash % 100
  str += " #{gold}g" if gold > 0
  # str += " #{cost[1].to_i.abs} |TInterface\\TargetingFrame\\UI-PVP-FFA:40:40:0:-8|t" if cost[1].to_i.abs > 0
  # str += " #{cost[2]} |TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:14|t" if cost[2].to_i > 0
  # str += " #{cost[4]} |T#{icons.assoc(cost[3])[1]}:18|t" if cost[4]
  cost[3].each {|id,qty| str += " #{qty} |T#{get_icon(id, body)}:18|t"}
  str
end


wh = Wowhead.new
tokens = {"Stone Keeper's Shard" => 43228, "Wintergrasp Mark of Honor" => 43589, "Badge of Justice" => 29434, "Emblem of Heroism" => 40752, "Emblem of Valor" => 40753, "Emblem of Conquest" => 45624, "Emblem of Triumph" => 47241, "Champion's Seal" => 44990}
tokens.each_pair do |name,itemid|
  puts "\nQuerying #{name} rewards"

  page = wh.fetch_page("/?item=#{itemid}")
  badge_rewards = wh.get("/?item=#{itemid}", "currency-for").map {|i| get_price(i["id"], i["cost"], page)}
	Engravings.export("#{name}.lua", "TOKEN_REWARDS", "#{name}:", badge_rewards)
end
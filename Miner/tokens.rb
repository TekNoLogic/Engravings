#!/usr/bin/env ruby

require 'wowhead'
require 'engravings'


wh = Wowhead.new
tokens = {"Stone Keeper's Shard" => 43228, "Wintergrasp Mark of Honor" => 43589, "Badge of Justice" => 29434, "Emblem of Heroism" => 40752, "Emblem of Valor" => 40753, "Emblem of Conquest" => 45624, "Emblem of Triumph" => 47241, "Champion's Seal" => 44990}
tokens.each_pair do |name,itemid|
  puts "\nQuerying #{name} rewards"

  page = wh.fetch_page("/?item=#{itemid}")
  badge_rewards = wh.get("/?item=#{itemid}", "currency-for").map {|i| Engravings.get_price(i["id"], i["cost"], page)}
	Engravings.export("#{name}.lua", "TOKEN_REWARDS", "#{name}:", badge_rewards)
end
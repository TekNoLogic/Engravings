#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'
require 'engravings_pricer'


wh = Wowhead.new
tokens = wh.get("/items=10").map {|i| [i["name"][1..-1], i["id"]]}
tokens.each do |name,itemid|
  puts "\nQuerying #{name} rewards"

  page = wh.fetch_page("/item=#{itemid}")
  if (currency_for = wh.get("/item=#{itemid}", "currency-for"))
    if (currency_for.reject {|i| i["id"] == 54637}.any?)
      badge_rewards = currency_for.reject {|i| i["id"] == 54637}.map {|i| Engravings.get_price(i["id"], i["cost"], page)}
      Engravings.export("#{name}.lua", "TOKEN_REWARDS", "#{name}:", badge_rewards)
    end
  end
end

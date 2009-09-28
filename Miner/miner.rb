#! /c/ruby/bin/ruby

#~ require 'config/environment'
require 'net/http'
require 'uri'
require 'wowhead'


def export(filename, constant, title, data, restrict_class = false)
	f = File.open(filename, "w")
	f << "\nlocal _, c = UnitClass('player')\nif c ~= '#{restrict_class}' then return end\n" if restrict_class
	f << "\nlocal #{constant} = [[\n"
	f << data
	f << %q|
]]

Engravings["| + title + %q|"] = setmetatable({}, {
	__index = function(t,i)
		local v = | + constant + %q|:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})
|
	f.close
end


def parse_list(raw_data, exclusions = [])
	id_list = []
	raw_data.scan(/id:(\d+)/) {|id| id_list << id.first.to_i }
	id_list - exclusions
end


def parse_prices(body, block_id = "sells")
	return [] unless body =~ /id: '#{block_id}'(.*)/
	items = $&.gsub(/sourcemore:\[[^\]]+\]/, "").scan(/id:\d+,[^\}]+\}/).map {|str| [$1, $2.gsub(/[\[\]]/, "").split(",")] if str =~ /id:(\d+),.+cost:\[(.*)\]\}/}
	icons = items.map {|id,cost| cost[3]}.uniq.map {|id| [id, "Interface\\Icons\\" + $1] if body =~ /\[#{id}\]=\{[^{]*icon:'([^;]+)'\};/}
	items.map do |id,cost|
		str = id
		str += " #{cost[0]} gold" if cost[0].to_i > 0
		str += " #{cost[1].to_i.abs} |TInterface\\TargetingFrame\\UI-PVP-FFA:40:40:0:-8|t" if cost[1].to_i.abs > 0
		str += " #{cost[2]} |TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:14|t" if cost[2].to_i > 0
		str += " #{cost[4]} |T#{icons.assoc(cost[3])[1]}:18|t" if cost[4]
		str
	end
end


def mine_pvp_prices(http)
	puts "\nQuerying PvP rewards"

	pvp_rewards = []
	vendors = [
		"/?npc=32380", # Season 5 Non-set (Heroic)
		"/?npc=31863", # Season 5 (Heroic)
		"/?npc=32381", # Season 5 Non-set (Normal)
		"/?npc=31864", # Season 5 (Normal)
		"/?npc=32834", # Season 5 (Rare)
		"/?npc=26352", # Season 4
		"/?npc=23446", # Season 3 Non-set
		"/?npc=24392", # Season 3
		"/?npc=23396", # Season 2
		"/?npc=20278", # Season 1
	].each {|vendor| pvp_rewards += parse_prices http.get(vendor).body}

	export(File.join("Data", "PvPCosts.lua"), "PVP_COSTS", "PvP:", pvp_rewards.sort.join("\n"))
	puts "PvP rewards added, #{pvp_rewards.size} items imported."
end


Net::HTTP.start("www.wowhead.com") do |http|
	mine_pvp_prices http
end

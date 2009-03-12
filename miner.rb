#! /c/ruby/bin/ruby

#~ require 'config/environment'
require 'net/http'
require 'uri'


MANUAL_IMPORT = {
	"Normal Instances" => {
		"The Arcatraz" => [31747, 31748, 31749],
		"Shadow Labyrinth" => [28176, 28177, 28178, 28179, 28167, 28170, 28171, 28174],
		"The Mechanar" => [28248, 28249, 28250, 28251, 28252], ## Cache of the Legion
	},
}


EXCLUDE = [29434, 40752, 40753]

def export(filename, constant, title, data)
	f = File.open(filename, "w")
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


def parse_zone(http, zone_id)
	puts "\nQuerying zone #{zone_id}"
	res = http.get "/?zone=#{zone_id}"

	if res.body =~ /<h1><span class="(?:bc|wotlk)-icon">(.*)<\/span><\/h1>/
		name = $1
		name = name[/: (.*)/, 1] if name =~ /:/
		puts "  Found zone '#{name}'"

		imports = 0

		bosses = parse_list($&) if res.body =~ /id: 'bosses'(.*)/

		normal_drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'normal-drops'(.*)/
		heroic_drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'heroic-drops'(.*)/
		normal_only = normal_drops - heroic_drops rescue nil
		heroic_only = heroic_drops - normal_drops rescue nil
		both_drops = heroic_drops - heroic_only rescue nil

		drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'drops'(.*)/

		all_drops = []
		all_drops += normal_only unless normal_only.nil?
		all_drops += heroic_only unless heroic_only.nil?
		all_drops += both_drops unless both_drops.nil?
		all_drops += drops unless drops.nil?

		formatted_drops = []
		formatted_drops += normal_only.map {|id| "#{id} #{name} (Normal)"} unless normal_only.nil?
		formatted_drops += heroic_only.map {|id| "#{id} #{name} (Heroic)"} unless heroic_only.nil?
		formatted_drops += both_drops.map {|id| "#{id} #{name}"} unless both_drops.nil?
		formatted_drops += drops.map {|id| "#{id} #{name}"} unless drops.nil?

		puts "    Found #{all_drops.size} items"
		puts "    Found #{bosses.size} bosses"
		[formatted_drops, bosses, all_drops]

	else
		puts "  Not a BC or Wrath zone"
		[]
	end
end


def parse_npc(http, npc_id, zone_drops)
	puts "\nQuerying NPC #{npc_id}"
	res = http.get "/?npc=#{npc_id}"

	name = $1 if res.body =~ /<h1>(.*) - NPC - World of Warcraft<\/h1>/
	#~ name = $1
	#~ name = name[/: (.*)/, 1] if name =~ /:/
	puts "  Found npc '#{name}'"

	imports = 0

	normal_drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'normal-drops'(.*)/
	heroic_drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'heroic-drops'(.*)/
	drops = parse_list($&, EXCLUDE) if res.body =~ /id: 'drops'(.*)/

	all_drops = []
	all_drops += normal_drops unless normal_drops.nil?
	all_drops += heroic_drops unless heroic_drops.nil?
	all_drops += drops unless drops.nil?

	all_drops -= (all_drops - zone_drops)
	puts "    Found #{all_drops.size} items"
	all_drops.map {|id| "#{id} #{name}"}
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


def mine_drops(http)
	zone_ids = []

	res = http.get "/?zones=2"
	res.body.scan(/\/\?zone=(\d+)/) {|id| zone_ids << id.first.to_i}
	res = http.get "/?zones=3"
	res.body.scan(/\/\?zone=(\d+)/) {|id| zone_ids << id.first.to_i}
	puts "Found #{zone_ids.size} instances"

	instance_drops = []
	boss_drops = []
	zone_ids.each do |zone_id|
		val = parse_zone http, zone_id
		instance_drops += val[0] unless val[0].nil?
		val[1].each {|npc_id| boss_drops += parse_npc(http, npc_id, val[2])} unless val[0].nil?
	end

	export(File.join("Data", "DropLocations.lua"), "DROP_LOCATIONS", "Drops in:", instance_drops.sort.join("\n"))
	export(File.join("Data", "DropNPCs.lua"), "DROP_NPC", "Dropped by:", boss_drops.uniq.sort.join("\n"))
end


def mine_token_rewards(http, name, itemid)
	puts "\nQuerying #{name} rewards"

	badge_rewards = parse_prices http.get("/?item=#{itemid}").body, "currency-for"
	export(File.join("Data", "#{name.gsub(" ", "")}.lua"), "TOKEN_REWARDS", "#{name}:", badge_rewards.sort.join("\n"))

	puts "#{name} rewards added, #{badge_rewards.size} items imported."
end


def mine_raid_tokens(http)
	puts "\nQuerying raid token rewards"

	tier_armor = []
	vendors = [
		"/?npc=20616", # Tier 4
		"/?npc=21906", # Tier 5
		"/?npc=23381", # Tier 6
		"/?npc=25976", # Tier 6 additional (Sunwell)
		"/?npc=26090", # Season 1
		"/?npc=26091", # Season 2
		"/?npc=26089", # Season 3 Non-set
		#~ "/?npc=26092", # Season 3, currently sells S2?
	].each do |vendor|
		res = http.get vendor

		if res.body =~ /id: 'sells'(.*)/
			list = $&.gsub(/sourcemore:\[[^\]]+\]/, "")
			list.scan(/id:(\d+),[^\}]*,cost:\[0,0,0,\[\[(\d+),1\]\]\]\}/) {|itemid, tokenid| tier_armor << [itemid, tokenid]}
		end
	end
	token_sources, token_zones = [], []
	tier_armor.map {|itemid, tokenid| tokenid}.uniq.each do |tokenid|
		res = http.get "/?item=#{tokenid}"
		if res.body =~ /id: 'dropped-by'(.*)/
			npcs = $&
			npc_names = npcs.scan(/name:'([^,]+)',/).flatten.reject {|name| name == "Lady Sacrolash" || name == "Grand Warlock Alythess"}
			token_sources << [tokenid, (npc_names.include?("Lady Malande") ? "Illidari Council" : npc_names.first)]
			token_zones << [tokenid, npcs.scan(/location:\[(\d+)\]/).flatten.uniq.first]
		end
	end

	zones = token_zones.map{|token,zone| zone}.uniq.map do |zone|
		res = http.get "/?zone=#{zone}"
		[zone, $1] if res.body =~ /<h1>(.*) - Zone - World of Warcraft<\/h1>/
	end

	export(File.join("Data", "TierArmorTokenDropNPCs.lua"), "TIER_ARMOR_TOKEN_NPCS", "Token dropped by:", tier_armor.map {|itemid, tokenid| "#{itemid} #{token_sources.assoc(tokenid)[1].gsub("\\'", "'")}"}.sort.join("\n"))
	export(File.join("Data", "TierArmorTokenDropLocations.lua"), "TIER_ARMOR_TOKEN_ZONES", "Token dropped in:", tier_armor.map {|itemid, tokenid| "#{itemid} #{zones.assoc(token_zones.assoc(tokenid)[1])[1]}"}.sort.join("\n"))
	puts "Tier token rewards added, #{tier_armor.size} items imported."
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


def mine_item_sets(http)
	puts "\nQuerying Item set names"

	item_sets = []
	vendors = [
		["/?npc=20616", "Tier 4"],
		["/?npc=21906", "Tier 5"],
		["/?npc=23381", "Tier 6"],
		["/?items&filter=na=Heroes';minle=200", "Tier 7 Normal"],
		["/?items&filter=na=Valorous;minle=213", "Tier 7 Heroic"],
		["/?items&filter=na=Gladiator%27s;maxle=135", "Season 1"],
		["/?items&filter=na=Merciless+Gladiator's", "Season 2"],
		["/?items&filter=na=Vengeful+Gladiator's", "Season 3"],
		["/?items&filter=na=Brutal+Gladiator's", "Season 4"],
		["/?items&filter=na=Savage+Gladiator's", "Season 5 (Rare)"],
		["/?items&filter=na=Hateful+Gladiator's", "Season 5 (Normal)"],
		["/?items&filter=na=Deadly+Gladiator's", "Season 5 (Heroic)"],
		["/?items&filter=na=Veteran's;minle=126", "Season 2 Non-set"],
		["/?items&filter=na=Vindicator's;minle=141;maxle=157", "Season 3 Non-set"],
		["/?items&filter=na=Guardian's;minle=154", "Season 4 Non-set"],
	].each do |vendor,set_name|
		puts "Querying set '#{set_name}'"
		res = http.get vendor
		items = parse_list($&) if res.body =~ /id: 'sells'(.*)/ || res.body =~ /id: 'items'(.*)/
		items.each {|item| item_sets << "#{item} #{set_name}"}
	end

	export(File.join("Data", "ItemSetNames.lua"), "ITEM_SET_NAMES", "Item set:", item_sets.sort.join("\n"))
	puts "Item set names added, #{item_sets.size} items imported."
end

Net::HTTP.start("www.wowhead.com") do |http|
	mine_drops http
	mine_token_rewards http, "Badge of Justice", 29434
	mine_token_rewards http, "Emblem of Heroism", 40752
	mine_token_rewards http, "Emblem of Valor", 40753
	mine_raid_tokens http
	mine_pvp_prices http
	mine_item_sets http
end



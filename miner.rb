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


EXCLUDE = [29434]

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

	if res.body =~ /<h1><span class="bc-icon">(.*)<\/span><\/h1>/
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
		puts "  Not a BC zone"
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


def mine_boj(http)
	puts "\nQuerying Badge of Justice rewards"
	res = http.get "/?item=29434"

	if res.body =~ /id: 'currency-for'(.*)/
		badge_rewards = []
		list = $&.gsub(/sourcemore:\[[^\]]+\]/, "")
		list.scan(/id:(\d+),[^\}]*,cost:\[0,0,0,\[\[29434,(\d+)\]\]\]\}/) {|m| badge_rewards << m }

		export(File.join("Data", "BadgeOfJustice.lua"), "BADGE_REWARDS", "Badge of Justice:", badge_rewards.map {|id,cost| "#{id} #{cost} |TInterface\\Icons\\Spell_Holy_ChampionsBond:14|t"}.sort.join("\n"))
	end


	puts "BoJ rewards added, #{badge_rewards.size} items imported."
end


Net::HTTP.start("www.wowhead.com") do |http|
	mine_drops http
	mine_boj http
end



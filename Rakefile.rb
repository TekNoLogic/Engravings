
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


def parse_list(raw_data)
	id_list = []
	raw_data.scan(/id:(\d+)/) {|id| id_list << id.first.to_i }
	id_list
end


def parse_zone(zone_id)
	puts "\nQuerying zone #{zone_id}"
	res = Net::HTTP.get URI.parse("http://www.wowhead.com/?zone=#{zone_id}")

	if res =~ /<h1><span class="bc-icon">(.*)<\/span><\/h1>/
		name = $1
		name = name[/: (.*)/, 1] if name =~ /:/
		puts "  Found zone '#{name}'"

		imports = 0

		bosses = parse_list($&) if res =~ /name: 'Bosses'(.*)/

		normal_drops = parse_list($&) if res =~ /name: 'Normal drops'(.*)/
		heroic_drops = parse_list($&) if res =~ /name: 'Heroic drops'(.*)/
		normal_only = normal_drops - heroic_drops rescue nil
		heroic_only = heroic_drops - normal_drops rescue nil
		both_drops = heroic_drops - heroic_only rescue nil

		drops = parse_list($&) if res =~ /name: 'Drops'(.*)/

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


def parse_npc(npc_id, zone_drops)
	puts "\nQuerying NPC #{npc_id}"
	res = Net::HTTP.get URI.parse("http://www.wowhead.com/?npc=#{npc_id}")

	name = $1 if res =~ /<h1>(.*) - NPCs - World of Warcraft<\/h1>/
	#~ name = $1
	#~ name = name[/: (.*)/, 1] if name =~ /:/
	puts "  Found npc '#{name}'"

	imports = 0

	normal_drops = parse_list($&) if res =~ /name: 'Normal drops'(.*)/
	heroic_drops = parse_list($&) if res =~ /name: 'Heroic drops'(.*)/
	drops = parse_list($&) if res =~ /name: 'Drops'(.*)/

	all_drops = []
	all_drops += normal_drops unless normal_drops.nil?
	all_drops += heroic_drops unless heroic_drops.nil?
	all_drops += drops unless drops.nil?

	all_drops -= (all_drops - zone_drops)
	puts "    Found #{all_drops.size} items"
	all_drops.map {|id| "#{id} #{name}"}
end


namespace :datamine do
  task(:drop_locations) do
		zone_ids = []

		res = Net::HTTP.get URI.parse("http://www.wowhead.com/?zones=2")
		res.scan(/\/\?zone=(\d+)/) {|id| zone_ids << id.first.to_i}
		puts "Found #{zone_ids.size} dungeons"

		res = Net::HTTP.get URI.parse("http://www.wowhead.com/?zones=3")
		res.scan(/\/\?zone=(\d+)/) {|id| zone_ids << id.first.to_i}
		puts "Found #{zone_ids.size} raids"

		instance_drops = []
		boss_drops = []
		zone_ids.each do |zone_id|
			val = parse_zone zone_id
			instance_drops += val[0] unless val[0].nil?
			val[1].each {|npc_id| boss_drops += parse_npc(npc_id, val[2])} unless val[0].nil?
		end

		export(File.join("Data", "DropLocations.lua"), "DROP_LOCATIONS", "Drops in:", instance_drops.sort.join("\n"))
		export(File.join("Data", "DropNPCs.lua"), "DROP_NPC", "Dropped by:", boss_drops.uniq.sort.join("\n"))
	end


  task(:boj) do
		puts "\nQuerying Badge of Justice rewards"
		res = Net::HTTP.get URI.parse("http://www.wowhead.com/?item=29434")

		if res =~ /name: 'Currency for'(.*)/
			badge_rewards = []
			$&.scan(/id:(\d+),[^\}]*,cost:\[0,0,0,\[\[29434,(\d+)\]\]\]\}/) {|m| badge_rewards << m }

			export(File.join("Data", "BadgeOfJustice.lua"), "BADGE_REWARDS", "Badge of Justice:", badge_rewards.map {|id,cost| "#{id} #{cost} Badges"}.sort.join("\n"))
		end


		puts "BoJ rewards added, #{badge_rewards.size} items imported."
	end

end




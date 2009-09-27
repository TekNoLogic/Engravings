#!/usr/bin/env ruby

require 'wowhead'
require 'engravings_exporter'


wh = Wowhead.new


armor_slots = [1, 3, 5, 6, 7, 8, 9, 10]
items = {
  :common => ["4.-6&filter=", "4.-5&filter=", "4.-3&filter=", "4.-2&filter=", "4.-4&filter="],
  :offhand => ["4.-5&filter="], :shield => ["4.6&filter="],
  :idol => ["4.8&filter="], :libram => ["4.7&filter="], :totem => ["4.9&filter="], :sigil => ["4.10&filter="], :wand => ["2.19&filter="],
  :dagger => ["2.15&filter="], :fist => ["2.13&filter="], :axe_one => ["2.0&filter="], :mace_one => ["2.4&filter="], :sword_one => ["2.7&filter="],
  :polearm => ["2.6&filter="], :staff => ["2.10&filter="], :axe_two => ["2.1&filter="], :mace_two => ["2.5&filter="], :sword_two => ["2.8&filter="],
  :bow => ["2.2&filter="], :crossbow => ["2.18&filter="], :gun => ["2.3&filter="],
  :thrown => ["2.16&filter="],
}
types = [:cloth, :leather, :mail, :plate]
types.each_index {|i| items[types[i]] = armor_slots.map {|s| "4.#{i+1}&filter=sl=#{s};"}}
class_item_types = {
  :mage         => [:common, :cloth],
  :warlock      => [:common, :cloth],
  :priest       => [:common, :cloth],
  :druid        => [:common, :cloth, :leather],
  :rogue        => [:common, :cloth, :leather],
  :shaman       => [:common, :cloth, :leather, :mail],
  :hunter       => [:common, :cloth, :leather, :mail],
  :paladin      => [:common, :cloth, :leather, :mail, :plate],
  :warrior      => [:common, :cloth, :leather, :mail, :plate],
  :death_knight => [:common, :cloth, :leather, :mail, :plate],
}
item_sets = {
  :mage         => [:common,   :cloth,   :wand, :offhand, :shield, :dagger,        :staff,                                                     :sword_one],
  :warlock      => [:common,   :cloth,   :wand, :offhand, :shield, :dagger,        :staff,                                                     :sword_one],
  :priest       => [:common,   :cloth,   :wand, :offhand,          :dagger,        :staff,           :mace_one],
  :druid        => [:common, :leather,   :idol, :offhand,          :dagger, :fist, :staff, :polearm, :mace_one, :mace_two],
  :rogue        => [:common, :leather,          :offhand,          :dagger, :fist,                   :mace_one,                                :sword_one, :sword_two, :thrown, :gun, :bow, :crossbow],
  :shaman       => [:common,    :mail,  :totem, :offhand, :shield, :dagger, :fist, :staff,           :mace_one, :mace_two, :axe_one, :axe_two],
  :hunter       => [:common,    :mail,          :offhand,          :dagger, :fist, :staff, :polearm,                       :axe_one, :axe_two, :sword_one, :sword_two, :thrown, :gun, :bow, :crossbow],
  :paladin      => [:common,   :plate, :libram, :offhand, :shield,                         :polearm, :mace_one, :mace_two, :axe_one, :axe_two, :sword_one, :sword_two],
  :warrior      => [:common,   :plate,          :offhand, :shield, :dagger, :fist, :staff, :polearm, :mace_one, :mace_two, :axe_one, :axe_two, :sword_one, :sword_two, :thrown, :gun, :bow, :crossbow],
  :death_knight => [:common,   :plate,  :sigil, :offhand,                                  :polearm, :mace_one, :mace_two, :axe_one, :axe_two, :sword_one, :sword_two],
}

wh.get_weight_filters.each_pair do |c,specs|
  item_values = (item_sets[c] + class_item_types[c]).map {|s| items[s]}.flatten

  specs.each_pair do |spec,w|
    data = []
    p "Grabbing #{spec} #{c} item scores"
    item_values.each do |v|
      [2,3,4].each do |q|
        item_data = wh.get("/?items=#{v}qu=#{q};gm=3;#{w}") || []
        data += item_data.map {|val| [val["id"], "%.3f" % val["score"]]}
      end
    end
    Engravings.export_wowhead_set("Wowhead#{c.to_s.capitalize}#{spec.gsub(/ /, "_").capitalize}.lua", spec, data.compact.sort.map {|d| d.join(" ")}, c)
  end
end

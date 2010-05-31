#!/usr/bin/env ruby

File.delete(*Dir["../Data_mined/*"])

require 'cooking'
require 'armor_tokens'
require 'drops'
require 'item_sets'
require 'pvp_prices'
require 'tokens'
require 'weight_miner'

toc = File.read("../Engravings.toc")
File.open("../Engravings.toc", "w") do |f|
  f << toc.gsub(/Data_mined\\.*\n/, '')
  f << Dir["../Data_mined/*"].map {|d| d.gsub(/\.\.\//, '').gsub(/\//, "\\")+"\n"}.join
end

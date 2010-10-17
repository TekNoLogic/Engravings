#!/usr/bin/env ruby

File.delete(*Dir["../Data_mined/*"])


if File.exist?("sani.json")
  require 'rubygems'
  require 'json'
  f = File.read "sani.json"
  JSON.parse f
  exit 0
end


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

#!/usr/bin/env ruby

files = Dir["*.rb"] - ["all.rb", "wowhead.rb", "engravings.rb"]
files.each {|f| require f}
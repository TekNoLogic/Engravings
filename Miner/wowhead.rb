#~ #! /c/ruby/bin/ruby

require 'rubygems'
require 'net/http'
require 'json'
require 'timeout'
require "yaml"
require 'digest/sha1'


module Enumerable
  def sum(identity = 0)
    return identity unless size > 0
    inject {|s,v| s + v}
  end
end


class Wowhead

	def initialize
	  @cache = File.exists?("cache.yaml") ? YAML.load_file("cache.yaml") : {}
		@http = Net::HTTP.start("www.wowhead.com")
		@http2 = Net::HTTP.start("static.wowhead.com")

		at_exit {File.open("cache.yaml", "w") {|f| f << @cache.to_yaml}}
	end


  def fetch_page(url, static = false)
    Dir.mkdir "cache" unless File.directory? "cache"
    cache_key = File.join("cache", Digest::SHA1.hexdigest("#{url}-#{static}"))
    File.open(cache_key, "w") {|f| Timeout::timeout(10) { f << (static ? @http2 : @http).get(url).body }} unless File.exists? cache_key
    File.read(cache_key)
  end


	def sanitize(str)
		str.gsub(/"/, "TOKEN1").gsub(/\\'/, "TOKEN2").gsub(/(&[^;]+);/, "\1TOKEN3").gsub(";", "").gsub(/\[,\{/, "[{").gsub(/([^,]),+([^,])/, '\1,\2').gsub(/'/, '"').gsub(/([{,])\s*([^{:,]+):/, '\1"\2":').gsub(/TOKEN3/, ";").gsub(/TOKEN2/, "'").gsub(/TOKEN1/, '"')
	end


  def sanitize2(str)
    str.gsub(/\\"/, "TOKEN1").gsub(/:"([^:"]+):([^:"]+"[,}])/, ':"\1TOKEN2\2').gsub(/([\w']+):/, '"\1":').gsub(/TOKEN2/, ":").gsub(/TOKEN1/, '\"')
  end

	def minimal_sanitize(str)
	  str.gsub(/,+/, ",")
  end


	def parse_list(raw_data, sanitation = true)
	  data = sanitation ? sanitize(raw_data) : minimal_sanitize(raw_data)
		JSON.parse(data)
	end


	def parse_list2(raw_data)
		JSON.parse(sanitize2(raw_data))
	end


	def get(page, list_id = "items")
		res = fetch_page(page)
		parse_list2($1) if res =~ /new Listview\(\{.*id: '#{list_id}', .*data: (\[\{.+\}\])\}\);/
	end

	def get_variable(page, variable, sanitation = true, static = true)
		res = fetch_page(page, static)
		parse_list($1, sanitation) if res =~ /var #{variable} ?= ?(.+?);\n?(function|var |Menu|\Z)/
	end

	def get_items(page)
		res = fetch_page(page)
		Hash[*res.scan(/_\[(\d+)\]=([^;]+)/).map {|id,data| [id.to_i, parse_list(data)]}.flatten]
	end

	def get_weight_filters
		@class_ids ||= get_class_ids
		@spec_names ||= get_spec_names

		res = fetch_page("/data=weight-presets&amp;261")
		raw_presets = parse_list(res.gsub("var wt_presets = ", ""))
		presets = raw_presets.map do |cid,data|
			data = data["pve"].map do |name,weights|
				[@spec_names[name], generate_filter(cid, weights)]
			end
			[@class_ids[cid].downcase.gsub(/ /, "_").to_sym, Hash[*data.flatten]]
		end
		Hash[*presets.flatten]
	end

	def generate_filter(classid, data)
		@filter_ids ||= get_filter_ids
		wts = *data.map {|wt,wtv| @filter_ids[wt]}
		wtvs = *data.map {|wt,wtv| wtv}
		"ub=#{classid};wt=#{wts.join(":")};wtv=#{wtvs.join(":")}"
	end

	def get_filter_ids
		parsed_data = get_variable("/js/filters.js?261", "fi_filters")
		Hash[*parsed_data.map {|a,b| b}.flatten.map {|v| [v["name"], v["id"]]}.flatten]
	end

	def get_class_ids
		get_variable("/js/locale_enus.js?261", "g_chr_classes")
	end

	def get_spec_names
		res = fetch_page("/js/locale_enus.js?261", true)
		names = parse_list($1) if res =~ /presets:(.+?),traits/
		Hash[*names.map do |k,v|
			v.gsub!(/ \(.+\)/, "") unless v =~ /(Frost|Feral)/
			v.gsub!(/[()]/, "")
			[k,v]
		end.flatten]
	end

end

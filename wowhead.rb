#~ #! /c/ruby/bin/ruby

require 'net/http'
require 'json'


class Wowhead

	def initialize
		@http = Net::HTTP.start("www.wowhead.com")
		@http2 = Net::HTTP.start("static.wowhead.com")
	end


	def sanitize(str)
		str.gsub(/"/, "TOKEN1").gsub(/\\'/, "TOKEN2").gsub(/(&[^;]+);/, "\1TOKEN3").gsub(";", "").gsub(/\[,\{/, "[{").gsub(/'/, '"').gsub(/([{,])\s*([^{:,]+):/, '\1"\2":').gsub(/TOKEN3/, ";").gsub(/TOKEN2/, "'").gsub(/TOKEN1/, '"')
	end


	def sanitize2(str)
		str.gsub(/"/, "TOKEN1").gsub(/\\'/, "TOKEN2").gsub(/\[,\{/, "[{").gsub(/'/, '"').gsub(/([{,])\s*([^{:,]+):/, '\1"\2":').gsub(/TOKEN2/, "'").gsub(/TOKEN1/, "'")
	end


	def parse_list(raw_data)
		JSON.parse(sanitize(raw_data))
	end


	def parse_list2(raw_data)
		JSON.parse(sanitize2(raw_data))
	end


	def get(page, list_id = "items")
		res = @http.get(page)
		parse_list2($1) if res.body =~ /new Listview\(\{.*id: '#{list_id}', .*data: (\[\{.+\}\])\}\);/
	end

	def get_variable(page, variable)
		res = @http2.get(page)
		parse_list($1) if res.body =~ /var #{variable}=(.+?);(function|var |\Z)/
	end

	def get_weight_filters
		@class_ids ||= get_class_ids
		@spec_names ||= get_spec_names

		res = @http.get("/?data=weight-presets&amp;261")
		raw_presets = parse_list(res.body.gsub("var wt_presets = ", ""))
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
		res = @http2.get("/js/locale_enus.js?261")
		names = parse_list($1) if res.body =~ /presets:(.+?),traits/
		Hash[*names.map do |k,v|
			v.gsub!(/ \(.+\)/, "") unless v =~ /(Frost|Feral)/
			v.gsub!(/[()]/, "")
			[k,v]
		end.flatten]
	end

end

#! /c/ruby/bin/ruby

require 'net/http'
require 'json'


class Wowhead

	def initialize
		@http = Net::HTTP.start("www.wowhead.com")
	end


	def sanitize(str)
		str.gsub(/"/, "TOKEN1").gsub(/\\'/, "TOKEN2").gsub(/\[,\{/, "[{").gsub(/'/, '"').gsub(/([{,])([^{:,]+):/, '\1"\2":').gsub(/TOKEN2/, "'").gsub(/TOKEN1/, "'")
	end


	def parse_list(raw_data)
		JSON.parse(sanitize(raw_data))
	end


	def get(page, list_id = "items")
		res = @http.get(page)
		parse_list($1) if res.body =~ /new Listview\(\{.*id: '#{list_id}', .*data: (\[\{.+\}\])\}\);/
	end

end

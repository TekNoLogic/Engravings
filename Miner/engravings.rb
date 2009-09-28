
class Engravings
  def self.export(filename, constant, title, data, restrict_class = false)
    self.write_file(filename) do |f|
      f << "\nlocal _, c = UnitClass('player')\nif c ~= '#{restrict_class.to_s.upcase.gsub("_", "")}' then return end\n" if restrict_class
      f << "\nlocal #{constant} = [[\n"
      f << data.sort.join("\n")
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
      data.size
    end
  end

  def self.export_wowhead_set(filename, title, data, restrict_class)
    self.write_file(filename) do |f|
      f << "\nlocal _, c = UnitClass('player')\nif c ~= '#{restrict_class.to_s.upcase.gsub("_", "")}' then return end\n"
      f << "\nEngravingsGenerateWowheadSet('#{title}', [[\n"
      f << data.join("\n")
      f << "\n]])\n"
      data.size
    end
  end

  def self.get_price(id, cost, body)
    str = id.to_s

    cash = cost[0].to_i
    gold = (cash / 10000).floor
    # silver = ((cash % 10000)/100).floor
    # copper = cash % 100
    str += " #{gold}g" if gold > 0
    # str += " #{cost[1].to_i.abs} |TInterface\\TargetingFrame\\UI-PVP-FFA:40:40:0:-8|t" if cost[1].to_i.abs > 0
    # str += " #{cost[2]} |TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:14|t" if cost[2].to_i > 0
    # str += " #{cost[4]} |T#{icons.assoc(cost[3])[1]}:18|t" if cost[4]
    cost[3].each {|id,qty| str += " #{qty} |T#{self.get_icon(id, body)}:18|t"}
    str
  end

  def self.get_icon(id, body)
    "Interface\\Icons\\#{$1}" if body =~ /\[#{id}\]=\{[^{]*icon:'([^;]+)'\};/
  end


  private

  def self.write_file(filename)
    filename = filename.gsub(" ", "")
    data_size = File.open(File.join("..", "Data", filename), "w") {|f| yield f}
    puts "#{filename} created, #{data_size} items imported."
  end

end

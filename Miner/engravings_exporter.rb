
class Engravings
  def self.export(filename, constant, title, data, restrict_class = false, pvp = false)
    self.write_file(filename) do |f|
      ifblock = constant != "PVP_COSTS" ? "if v then t[i] = v; return v" : %q{
		if v then
			v = v:gsub("HONORPOINTS", "|T"..honor..":18:18:-6:0|t")
			t[i] = v; return v}

      f << "\nlocal _, c = UnitClass('player')\nif c ~= '#{restrict_class.to_s.upcase.gsub("_", "")}' then return end\n" if restrict_class
      f << "\nlocal #{constant} = [[\n#{data.sort.join("\n")}\n]]\n\n"
      f << 'local honor = "Interface\\\\PVPFrame\\\\PVP-Currency-".. UnitFactionGroup("player")' if constant == "PVP_COSTS"
      f << %Q|
Engravings["#{title}"] = setmetatable({}, {
	__index = function(t,i)
		local v = #{constant}:match("\\n"..i.." ([^\\n]+)\\n")
		#{ifblock.strip}
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

  private

  def self.write_file(filename)
    filename = filename.gsub(/[ ']/, "")
    data_size = File.open(File.join("..", "Data_mined", filename), "w") {|f| yield f}
    puts "#{filename} created, #{data_size} items imported."
  end

end

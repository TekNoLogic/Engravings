
class Engravings
  def self.export(filename, constant, title, data, restrict_class = false)
    filename = filename.gsub(" ", "")
    f = File.open(File.join("..", "Data", filename), "w")
    f << "\nlocal _, c = UnitClass('player')\nif c ~= '#{restrict_class}' then return end\n" if restrict_class
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
    f.close
    puts "#{filename} created, #{data.size} items imported."
  end
end

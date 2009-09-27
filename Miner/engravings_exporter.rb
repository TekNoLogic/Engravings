
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

  private

  def self.write_file(filename)
    filename = filename.gsub(" ", "")
    data_size = File.open(File.join("..", "Data", filename), "w") {|f| yield f}
    puts "#{filename} created, #{data_size} items imported."
  end

end

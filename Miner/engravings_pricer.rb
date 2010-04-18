
class Engravings
  def self.get_price(id, cost, body)
    str = id.to_s

    cash = cost[0].to_i
    gold = (cash / 10000).floor
    # silver = ((cash % 10000)/100).floor
    # copper = cash % 100
    str += " #{gold}g" if gold > 0
    str += " #{cost[1].to_i.abs} HONORPOINTS" if cost[1].to_i.abs > 0
    str += " #{cost[2]} |TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:14|t" if cost[2].to_i > 0
    str += " #{cost[4]} |T#{icons.assoc(cost[3])[1]}:18|t" if cost[4]
    cost[3].each {|id,qty| str += " #{qty} |T#{self.get_icon(id, body)}:18|t"}
    str
  end

  private
  def self.get_icon(id, body)
    "Interface\\Icons\\#{$1}" if body =~ /\[#{id}\]=\{[^{]*icon:'([^;]+)'\};/
  end
end


local SHARD_REWARDS = [[
28553 50 Shards
28555 50 Shards
28576 18 Shards
28574 18 Shards
28759 18 Shards
28560 18 Shards
28561 18 Shards
28577 18 Shards
28758 18 Shards
28559 18 Shards
28761 18 Shards
28760 18 Shards
28575 18 Shards
28557 8 Shards
28556 8 Shards
32947 2 Shards
32948 2 Shards
]]

Engravings["Spirit Shard:"] = setmetatable({}, {
	__index = function(t,i)
		local v = SHARD_REWARDS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})

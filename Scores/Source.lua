
local myname, ns = ...


local stats, total_weights = {}, {}
for spec,weights in pairs(ns.spec_weights) do
	local total_weight = 0

	for stat,weight in pairs(weights) do
		total_weight = total_weight + weight
	end

	local values = setmetatable({}, {
		__index = function(t,i)
			local name, link = GetItemInfo(i)
			if not link then return end

			wipe(stats)
			stats = GetItemStats(link, stats)

			local score = 0
			for stat,val in pairs(stats) do
				score = score + val * (weights[stat] or 0)
			end

			score = math.floor((score / total_weight) * 1000) / 1000

			t[i] = score
			return score
		end
	})

	ns.GenerateScoreSet("Score ("..spec.."):", values)
end

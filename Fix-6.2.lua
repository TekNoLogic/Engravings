
local myname, ns = ...


-- It seems that patch 6.2 or 7.0 broke GameTooltip:GetItem() if the source was
-- GameTooltip:SetMerchantItem()
-- *sigh*


local link
local OrigGetItem = GameTooltip.GetItem
local OrigSetMerchantItem = GameTooltip.SetMerchantItem
function GameTooltip:SetMerchantItem(id, ...)
  link = GetMerchantItemLink(id)
  return OrigSetMerchantItem(self, id, ...)
end


function GameTooltip:GetItem(...)
  if link then
    local name = GetItemInfo(link)
    return name, link
  end

  return OrigGetItem(self, ...)
end


-- This is so dirty.  I hate it.  I'M SORRY OK‽
local methods = {
  "SetAction",
  "SetAuctionItem",
  "SetAuctionSellItem",
  "SetBagItem",
  "SetBuybackItem",
  "SetHyperlink",
  "SetInboxItem",
  "SetInventoryItem",
  "SetLootItem",
  "SetLootRollItem",
  "SetMerchantCostItem",
  "SetMerchantItem",
  "SetPetAction",
  "SetQuestItem",
  "SetQuestLogItem",
  "SetQuestRewardSpell",
  "SetSendMailItem",
  "SetShapeshift",
  "SetTalent",
  "SetTradePlayerItem",
  "SetTradeTargetItem",
  "SetTrainerService",
  "SetUnit",
  "SetUnitBuff",
  "SetUnitDebuff",
}
for _,m in pairs(methods) do
  local orig = GameTooltip[m]
  GameTooltip[m] = function(self, ...)
    link = nil
    orig(GameTooltip, ...)
  end
end

function()
  local npcName = UnitName("npc")

  local containsNpcName = function(value)
    return value == npcName
  end

  if (aura_env.some(aura_env.TRANSMORPHER_NAMES, containsNpcName) and not IsShiftKeyDown()) then
    C_GossipInfo.SelectOption(1)
    return
  end
end

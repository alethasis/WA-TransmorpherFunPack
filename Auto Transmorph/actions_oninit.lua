aura_env.TRANSMORPHER_NAMES = {
  "Ethereal Transmorpher"
}

aura_env.noop = function()
  return
end

aura_env.some = function(arr, cond)
  local condition = cond or aura_env.noop

  for index, value in ipairs(arr) do
    if (condition(value, index)) then
      return true
    end
  end

  return false
end

function (allstates, event, ...)
  if (event == "UNIT_SPELLCAST_SUCCEEDED") then
    local ETHEREAL_TRANSMORPHER_ID = 290154
    local duration = 7
    local unitID, _, spellID = ...

    if (spellID == ETHEREAL_TRANSMORPHER_ID) then
      local casterName = UnitName(unitID)

      allstates[""] = {
        show = true,
        changed = true,
        autoHide = true,
        casterName = casterName and WA_ClassColorName(casterName) or "Unknown",
        duration = duration,
        expirationTime = GetTime() + duration,
        progressType = "static"
      }
      return true
    end
  end
end

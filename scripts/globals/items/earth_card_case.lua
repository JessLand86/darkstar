-----------------------------------------
-- ID: 5405
-- Earth Card Case
-- When used, you will obtain one stack of Earth Cards
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:getFreeSlotsCount() == 0) then
        result = 308
    end
    return result
end

function onItemUse(target)
    target:addItem(2179,99)
end

-----------------------------------
-- Area: Mount Zhayolm
--  NPC: Bapokk
-- Handles access to Alzadaal Ruins
-- !pos -20 -6 276 61
-----------------------------------

function onTrade(player,npc,trade)
    if (trade:getItemCount() == 1 and trade:hasItemQty(2185,1)) then -- Silver
        player:tradeComplete();
        player:setPos(-20,-6,0,192); -- using the pos method until the problem below is fixed
        -- player:startEvent(163); -- << this CS goes black at the end, never fades in
        return 1;
    end
end;

function onTrigger(player,npc)

    -- Ruins -> Zhayolm
    if (player:getZPos() > -280) then
        player:startEvent(164);
    -- Zhayolm -> Ruins
    else
        player:startEvent(162);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
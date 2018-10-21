-----------------------------------
-- Area: Ifrit's Cauldron
--  NPC: qm1 (???)
-- Notes: Used to spawn Tarasque
-- !pos 126 18 166 205
-----------------------------------
local ID = require("scripts/zones/Ifrits_Cauldron/IDs")
require("scripts/globals/npc_util")
-----------------------------------

function onTrade(player,npc,trade)
    player:PrintToPlayer("onTrade")
    if npcUtil.tradeHas(trade, 1189) and npcUtil.popFromQM(player, npc, ID.mob.TARASQUE, false) then -- Rattling Egg
        player:confirmTrade()
        GetMobByID(ID.mob.TARASQUE):lookAt(player:getPos())
    end
end

function onTrigger(player,npc)
    player:messageSpecial(ID.text.EGGSHELLS_LIE_SCATTERED)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end

-----------------------------------
-- Area: Giddeus (145)
--  MOB: Yagudo_Persecutor
-----------------------------------
local ID = require("scripts/zones/Giddeus/IDs");
require("scripts/globals/mobs");

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    phOnDespawn(mob,ID.mob.JUU_DUZU_THE_WHIRLWIND_PH,5,math.random(3600,7200)); -- 1 to 2 hours
end;

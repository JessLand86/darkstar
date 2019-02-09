-----------------------------------
-- Area: Middle Delkfutt's Tower
--  MOB: Goblin Pathfinder
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 782, 1, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 784, 1, dsp.regime.type.GROUNDS)
end;
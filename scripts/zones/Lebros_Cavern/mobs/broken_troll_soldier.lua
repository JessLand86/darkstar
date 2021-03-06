-----------------------------------
-- Area: Lebros Cavern (Troll Fugitives)
--  MOB: Troll Fugitive
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------
-- Todo  make them spawn at 25-75% hp and stay
function onMobSpawn(mob)
end

function onMobEngaged(mob,target)
    local MaxHP = mob:getHP()
    local bonus = math.random(2,6)
    mob:setHP(MaxHP / (8/(bonus)))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    local instance = mob:getInstance()
    instance:setProgress(instance:getProgress() + 1)
end
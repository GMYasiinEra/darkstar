-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  MOB: Olla Media
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (isKiller == true) then
        SpawnMob(mob:getID() + 1):updateClaim(player);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    if (GetMobAction(mob:getID() + 1) == 0) then -- if this Media despawns and Grande is not alive, it would be because it despawned outside of being killed.
        GetNPCByID(17506692):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;

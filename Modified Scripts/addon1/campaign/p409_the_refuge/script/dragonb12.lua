MyCamp = "B"
MyBehavior = "AttackTroop"
MySpawnTime = 580 -- Wert existiert nur bei AttackTroop-Einheiten

-- es gibt vier Arten von Behavior:
-- BaseDefender: bleibt immer im eigenen Lager
-- AttackTroop: attackiert immer das Spieler-Basislager
-- Verstarkung: bleibt solange im eigenen Lager stehen, bis ein bestimmtes Nachbarlager angegriffen wird,
--          dann Angriff der durch den Kampf geschw�chten feindlichen Truppen
-- Patrol: patrouilliert durch alle vier Lager

dofile(GetScriptPath() .. "SpawnDragons_SharedScript.lua")
## Parry : End parry

scoreboard players set @s lost_arcana_parry_duration 0
tag @s remove lost_arcana_is_parrying
tag @s remove lost_arcana_is_weak_parrying
tag @s remove lost_arcana_is_strong_parrying

effect clear @s resistance
attribute @s minecraft:generic.movement_speed modifier remove lost_arcana:parry_slowness
attribute @s minecraft:generic.knockback_resistance modifier remove lost_arcana:parry_kb_resist
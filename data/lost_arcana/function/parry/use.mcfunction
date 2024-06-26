## Parry : Use

scoreboard players operation @s lost_arcana_cd_parry = 0 lost_arcana_number
scoreboard players operation @s lost_arcana_parry_duration = max_duration lost_arcana_parry_duration

effect give @s resistance 1 4
attribute @s minecraft:generic.movement_speed modifier add lost_arcana:parry_slowness -1 add_multiplied_total
attribute @s minecraft:generic.knockback_resistance modifier add lost_arcana:parry_kb_resist 0.5 add_multiplied_total

tag @s add lost_arcana_is_parrying
execute if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_weak_parry run tag @s add lost_arcana_is_weak_parrying
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_weak_parry run tag @s add lost_arcana_is_weak_parrying
execute if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_strong_parry run tag @s add lost_arcana_is_strong_parrying
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_strong_parry run tag @s add lost_arcana_is_strong_parrying
## Lantern : Follow player 2

tp @e[tag=lost_arcana_lantern_marker_this, limit=1] ~ ~1 ~
execute if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_lantern run execute if score @s lost_arcana_dead = 0 lost_arcana_number run tag @e[tag=lost_arcana_lantern_marker_this, limit=1] add lost_arcana_lantern_marker_has_player
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_lantern run execute if score @s lost_arcana_dead = 0 lost_arcana_number run tag @e[tag=lost_arcana_lantern_marker_this, limit=1] add lost_arcana_lantern_marker_has_player

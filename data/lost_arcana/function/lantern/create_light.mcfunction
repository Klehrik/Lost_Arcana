## Lantern : Create light

execute positioned ~ ~1 ~ summon marker run tag @s add lost_arcana_light_marker

execute if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_lantern_strong run fill ~ ~1 ~ ~ ~1 ~ light[level=10] replace #minecraft:air
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_lantern_strong run fill ~ ~1 ~ ~ ~1 ~ light[level=10] replace #minecraft:air
execute if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_lantern_weak run fill ~ ~1 ~ ~ ~1 ~ light[level=6] replace #minecraft:air
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_lantern_weak run fill ~ ~1 ~ ~ ~1 ~ light[level=6] replace #minecraft:air
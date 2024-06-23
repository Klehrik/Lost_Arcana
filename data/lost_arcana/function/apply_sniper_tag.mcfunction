## Apply Sniper tag from enchantment

tag @s add lost_arcana_sniper_arrow

execute store result score level lost_arcana_variable run data get entity @s weapon.components.minecraft:enchantments.levels.lost_arcana:sniper
# tellraw @a {"score": {"name": "level", "objective": "lost_arcana_variable"}}  -- prints level

execute if score level lost_arcana_variable = 1 lost_arcana_number run tag @s add lost_arcana_sniper_arrow_level_1
execute if score level lost_arcana_variable = 2 lost_arcana_number run tag @s add lost_arcana_sniper_arrow_level_2
execute if score level lost_arcana_variable = 3 lost_arcana_number run tag @s add lost_arcana_sniper_arrow_level_3
execute if score level lost_arcana_variable = 4 lost_arcana_number run tag @s add lost_arcana_sniper_arrow_level_4
execute if score level lost_arcana_variable = 5 lost_arcana_number run tag @s add lost_arcana_sniper_arrow_level_5

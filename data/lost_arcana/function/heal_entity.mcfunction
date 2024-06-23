## Heal entity

execute store result score health lost_arcana_variable run data get entity @s Health 100
scoreboard players operation health lost_arcana_variable += heal_amount lost_arcana_parameter
execute store result entity @s Health float 0.01 run scoreboard players get health lost_arcana_variable
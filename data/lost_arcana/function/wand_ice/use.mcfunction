## Wand Ice : Use

execute at @s anchored eyes positioned ^ ^ ^2.5 run execute unless block ~ ~ ~ #minecraft:air run execute at @s anchored eyes positioned ^ ^ ^1.5 run execute if block ~ ~ ~ #minecraft:air unless entity @s[distance=..0.8] run function lost_arcana:wand_ice/create_block
execute at @s anchored eyes positioned ^ ^ ^2.5 run execute if block ~ ~ ~ #minecraft:air run function lost_arcana:wand_ice/create_block
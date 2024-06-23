## Wand Ice : Create Block

scoreboard players operation @s lost_arcana_wand_cd_ice = 0 lost_arcana_number

fill ~ ~ ~ ~ ~ ~ ice replace #minecraft:air
summon marker ~ ~ ~ {Tags:["lost_arcana_wand_ice_block"]}
playsound minecraft:block.glass.place block @a ~ ~ ~
particle minecraft:snowflake ~ ~ ~ 0.25 0.25 0.25 0.05 4
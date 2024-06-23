## Wand Spark : Use

# Get random proj_id value
execute store result score proj_id lost_arcana_variable run random value 1..1000000000
scoreboard players operation @s lost_arcana_proj_id_wand_spark = proj_id lost_arcana_variable

# Start cooldown and init projectile
scoreboard players operation @s lost_arcana_wand_cd_spark = 0 lost_arcana_number
execute anchored eyes positioned ^ ^ ^0.5 summon marker positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function lost_arcana:wand_spark/init

# Cast immunity (to not hit self)
tag @s add lost_arcana_cast_immunity
scoreboard players set @s lost_arcana_cast_immunity 3
## Wand Spark : Init

# Set proj_id value
scoreboard players operation @s lost_arcana_proj_id_wand_spark = proj_id lost_arcana_variable

tag @s add lost_arcana_wand_spark_projectile

tag @s add lost_arcana_wand_spark_init
execute summon area_effect_cloud run data modify entity @e[tag=lost_arcana_wand_spark_init,limit=1] Motion set from entity @s Pos
tag @s remove lost_arcana_wand_spark_init

# Lifetime
scoreboard players set @s lost_arcana_lifetime 0
scoreboard players set @s lost_arcana_max_lifetime 40
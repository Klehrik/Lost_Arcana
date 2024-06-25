## Wand Spark : Use

# Start cooldown and init projectile
tag @s add lost_arcana_player
scoreboard players operation @s lost_arcana_wand_cd_spark = 0 lost_arcana_number
execute anchored eyes positioned ^ ^ ^0.5 summon marker positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function lost_arcana:wand_spark/init
tag @s remove lost_arcana_player

# Cast immunity (to not hit self)
tag @s add lost_arcana_cast_immunity
scoreboard players set @s lost_arcana_cast_immunity 3
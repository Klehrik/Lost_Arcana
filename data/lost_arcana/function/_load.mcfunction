## Load

# General
scoreboard objectives add lost_arcana_variable dummy
scoreboard objectives add lost_arcana_parameter dummy

scoreboard objectives add lost_arcana_number dummy
scoreboard players set 0 lost_arcana_number 0
scoreboard players set 1 lost_arcana_number 1
scoreboard players set 2 lost_arcana_number 2
scoreboard players set 3 lost_arcana_number 3
scoreboard players set 4 lost_arcana_number 4
scoreboard players set 5 lost_arcana_number 5
scoreboard players set 6 lost_arcana_number 6
scoreboard players set 7 lost_arcana_number 7
scoreboard players set 8 lost_arcana_number 8
scoreboard players set 9 lost_arcana_number 9
scoreboard players set 10 lost_arcana_number 10
scoreboard players set 100 lost_arcana_number 100


# Create cooldown objectives
scoreboard objectives add lost_arcana_horn_used minecraft.used:minecraft.goat_horn
scoreboard objectives add lost_arcana_cd_display dummy
scoreboard objectives add lost_arcana_cast_immunity dummy

scoreboard objectives add lost_arcana_horn_cd_strength dummy
scoreboard objectives add lost_arcana_horn_cd_heal dummy
scoreboard objectives add lost_arcana_horn_cd_defense dummy
scoreboard objectives add lost_arcana_wand_cd_spark dummy
scoreboard objectives add lost_arcana_wand_cd_lightning dummy
scoreboard objectives add lost_arcana_wand_cd_ice dummy
scoreboard objectives add lost_arcana_cd_light_brand dummy

# Set cooldowns (in ticks)
scoreboard players set max_cd lost_arcana_horn_cd_strength 400
scoreboard players set max_cd lost_arcana_horn_cd_heal 400
scoreboard players set max_cd lost_arcana_horn_cd_defense 400
scoreboard players set max_cd lost_arcana_wand_cd_spark 30
scoreboard players set max_cd lost_arcana_wand_cd_lightning 60
scoreboard players set max_cd lost_arcana_wand_cd_ice 5
scoreboard players set max_cd lost_arcana_cd_light_brand 40

# Custom projectiles
scoreboard objectives add lost_arcana_lifetime dummy
scoreboard objectives add lost_arcana_max_lifetime dummy

# Projectile ID storage
# god why can't we store entity ids oooaaauuuggghhh
scoreboard objectives add lost_arcana_proj_id_wand_spark dummy
scoreboard objectives add lost_arcana_proj_id_wand_lightning dummy
scoreboard objectives add lost_arcana_proj_id_light_brand dummy

# Misc.
# scoreboard objectives add lost_arcana_dead deathCount
# scoreboard objectives add lost_arcana_lantern_id dummy
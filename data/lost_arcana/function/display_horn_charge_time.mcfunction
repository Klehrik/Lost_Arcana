## Display horn charge time

scoreboard players set @s lost_arcana_cd_display 2

# Scale up current cd parameter (to avoid decimal result after division)
scoreboard players operation cd lost_arcana_parameter *= 10 lost_arcana_number

# Get ratio of scaled up current / max (should be between 0 and 10)
scoreboard players operation ratio lost_arcana_variable = cd lost_arcana_parameter
scoreboard players operation ratio lost_arcana_variable /= max_cd lost_arcana_parameter

# Choose display color
execute if score color lost_arcana_parameter = 0 lost_arcana_number run function lost_arcana:display_charge_white
execute if score color lost_arcana_parameter = 1 lost_arcana_number run function lost_arcana:display_charge_aqua

# Reset color
scoreboard players operation color lost_arcana_parameter = 0 lost_arcana_number
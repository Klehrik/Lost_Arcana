## Horn Strength : Check

execute if score @s lost_arcana_horn_used = 2 lost_arcana_number run execute if score @s lost_arcana_horn_cd_strength = max_cd lost_arcana_horn_cd_strength run function lost_arcana:horn_strength/use

# Charge display
scoreboard players operation cd lost_arcana_parameter = @s lost_arcana_horn_cd_strength
scoreboard players operation max_cd lost_arcana_parameter = max_cd lost_arcana_horn_cd_strength
function lost_arcana:display_horn_charge_time
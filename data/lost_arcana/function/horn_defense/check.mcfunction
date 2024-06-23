## Horn Defense : Check

execute if score @s lost_arcana_horn_used = 2 lost_arcana_number run execute if score @s lost_arcana_horn_cd_defense = max_cd lost_arcana_horn_cd_defense run function lost_arcana:horn_defense/use

# Charge display
scoreboard players operation cd lost_arcana_parameter = @s lost_arcana_horn_cd_defense
scoreboard players operation max_cd lost_arcana_parameter = max_cd lost_arcana_horn_cd_defense
function lost_arcana:display_horn_charge_time
## Parry : Choose display

execute if score @s lost_arcana_parry_duration = 0 lost_arcana_number run function lost_arcana:parry/charge_display
execute if score @s lost_arcana_parry_duration > 0 lost_arcana_number run function lost_arcana:parry/parry_display
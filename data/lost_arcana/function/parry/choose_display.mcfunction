## Parry : Choose display

execute as @a if score @s lost_arcana_parry_duration = 0 lost_arcana_number run function lost_arcana:parry/charge_display
execute as @a if score @s lost_arcana_parry_duration > 0 lost_arcana_number run function lost_arcana:parry/parry_display
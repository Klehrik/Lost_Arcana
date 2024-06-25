## Ender Satchel : Create check

# Check if a chest minecart already exists
scoreboard players set check lost_arcana_variable 0

tag @s add lost_arcana_player
execute as @e[tag=lost_arcana_ender_satchel] run execute if score @s lost_arcana_player_id = @a[tag=lost_arcana_player, limit=1] lost_arcana_player_id run scoreboard players set check lost_arcana_variable 1
tag @s remove lost_arcana_player

# Create one if it does not
execute if score check lost_arcana_variable = 0 lost_arcana_number run function lost_arcana:ender_satchel/create
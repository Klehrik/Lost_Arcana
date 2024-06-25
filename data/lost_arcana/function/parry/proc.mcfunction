## Parry : Proc

# Grant Strength bonus
scoreboard players operation @s lost_arcana_display_parry_text = max_duration lost_arcana_display_parry_text
execute as @s[tag=lost_arcana_is_weak_parrying] run effect give @s strength 1 0
execute as @s[tag=lost_arcana_is_strong_parrying] run effect give @s strength 1 1

# Play sound
playsound block.metal.break player @a ~ ~ ~ 1 2
playsound block.amethyst_block.fall player @a ~ ~ ~ 1 1

# Consume 2 durability
execute if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_wakizashi run item modify entity @s weapon.mainhand lost_arcana:durability_use_2_250
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_wakizashi run item modify entity @s weapon.offhand lost_arcana:durability_use_2_250
execute if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_echo_blade run item modify entity @s weapon.mainhand lost_arcana:durability_use_2_400
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_echo_blade run item modify entity @s weapon.offhand lost_arcana:durability_use_2_400

function lost_arcana:parry/end
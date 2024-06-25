## Wand Ice : Tick

# Block Lifetime
scoreboard players add @e[nbt={Tags:["lost_arcana_wand_ice_block"]}] lost_arcana_variable 1
execute as @e[nbt={Tags:["lost_arcana_wand_ice_block"]}] at @s run execute unless block ~ ~ ~ ice run kill @s
execute as @e[nbt={Tags:["lost_arcana_wand_ice_block"]}, scores={lost_arcana_variable=100..}] at @s run function lost_arcana:wand_ice/destroy_block

# Charge Display
execute as @a if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_wand_ice run function lost_arcana:wand_ice/charge_display
execute as @a if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_wand_ice run function lost_arcana:wand_ice/charge_display
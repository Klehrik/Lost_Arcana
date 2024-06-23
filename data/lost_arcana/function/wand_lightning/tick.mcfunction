## Wand Lightning : Tick

execute as @e[tag=lost_arcana_wand_lightning_projectile] at @s run function lost_arcana:wand_lightning/move

# Charge Display
execute as @a if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_wand_lightning run function lost_arcana:wand_lightning/charge_display
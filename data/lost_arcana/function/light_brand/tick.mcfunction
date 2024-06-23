## Light Brand : Tick

execute as @e[tag=lost_arcana_light_brand_projectile] at @s run function lost_arcana:light_brand/move

# Charge Display
execute as @a if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_light_brand run function lost_arcana:light_brand/charge_display
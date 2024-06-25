## Wand Spark : Tick

execute as @e[tag=lost_arcana_wand_spark_projectile] at @s run function lost_arcana:wand_spark/move

# Charge Display
execute as @a if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_wand_spark run function lost_arcana:wand_spark/charge_display
execute as @a if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_wand_spark run function lost_arcana:wand_spark/charge_display
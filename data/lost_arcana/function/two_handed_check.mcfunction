## Two-Handed Check

# Hand item check
scoreboard players set check lost_arcana_variable 0
execute as @s[nbt={SelectedItem:{}}] run scoreboard players add check lost_arcana_variable 1
execute as @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players add check lost_arcana_variable 1

# Give Weakness if holding two items
execute if score check lost_arcana_variable = 2 lost_arcana_number run effect give @s weakness 1 0
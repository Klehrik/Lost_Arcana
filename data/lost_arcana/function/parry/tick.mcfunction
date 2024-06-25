## Parry : Tick

# Check if hit during parry
execute as @a[tag=lost_arcana_is_parrying, nbt={HurtTime:9s}] run function lost_arcana:parry/proc

# Remove parry tags
execute as @a if score @s lost_arcana_parry_duration = 0 lost_arcana_number run function lost_arcana:parry/end

# Choose which bar to display
execute as @a if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_parry run function lost_arcana:parry/choose_display
execute as @a if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_parry run function lost_arcana:parry/choose_display
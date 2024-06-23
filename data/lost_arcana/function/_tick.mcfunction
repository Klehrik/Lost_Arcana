## Tick

# Apply velocity boost to Sniper arrows
execute as @e[type=arrow, tag=lost_arcana_sniper_arrow, tag=!lost_arcana_arrow_speed_modified] run function lost_arcana:apply_sniper_speed

# Scope in when crouching with Sniper crossbow (now directly in enchant .json)
#execute as @a if data entity @s SelectedItem.components.minecraft:enchantments.levels.lost_arcana:sniper run function lost_arcana:sniper_scope

# Reset horn use score
execute as @a if score @s lost_arcana_horn_used = 2 lost_arcana_number run scoreboard players set @s lost_arcana_horn_used 0
execute as @a if score @s lost_arcana_horn_used = 1 lost_arcana_number run scoreboard players set @s lost_arcana_horn_used 2

# Initialize horn/wand charge
execute as @a unless score @s lost_arcana_cd_display = @s lost_arcana_cd_display run scoreboard players set @s lost_arcana_cd_display 0
execute as @a unless score @s lost_arcana_cast_immunity = @s lost_arcana_cast_immunity run scoreboard players set @s lost_arcana_cast_immunity 0

execute as @a unless score @s lost_arcana_horn_cd_strength = @s lost_arcana_horn_cd_strength run scoreboard players set @s lost_arcana_horn_cd_strength 0
execute as @a unless score @s lost_arcana_horn_cd_heal = @s lost_arcana_horn_cd_heal run scoreboard players set @s lost_arcana_horn_cd_heal 0
execute as @a unless score @s lost_arcana_horn_cd_defense = @s lost_arcana_horn_cd_defense run scoreboard players set @s lost_arcana_horn_cd_defense 0
execute as @a unless score @s lost_arcana_wand_cd_spark = @s lost_arcana_wand_cd_spark run scoreboard players set @s lost_arcana_wand_cd_spark 0
execute as @a unless score @s lost_arcana_wand_cd_lightning = @s lost_arcana_wand_cd_lightning run scoreboard players set @s lost_arcana_wand_cd_lightning 0
execute as @a unless score @s lost_arcana_wand_cd_ice = @s lost_arcana_wand_cd_ice run scoreboard players set @s lost_arcana_wand_cd_ice 0
execute as @a unless score @s lost_arcana_cd_light_brand = @s lost_arcana_cd_light_brand run scoreboard players set @s lost_arcana_cd_light_brand 0

# Increment horn/wand charge
execute as @a if score @s lost_arcana_cd_display > 0 lost_arcana_number run scoreboard players remove @s lost_arcana_cd_display 1
execute as @a if score @s lost_arcana_cast_immunity > 0 lost_arcana_number run scoreboard players remove @s lost_arcana_cast_immunity 1

execute as @a if score @s lost_arcana_horn_cd_strength < max_cd lost_arcana_horn_cd_strength run scoreboard players add @s lost_arcana_horn_cd_strength 1
execute as @a if score @s lost_arcana_horn_cd_heal < max_cd lost_arcana_horn_cd_heal run scoreboard players add @s lost_arcana_horn_cd_heal 1
execute as @a if score @s lost_arcana_horn_cd_defense < max_cd lost_arcana_horn_cd_defense run scoreboard players add @s lost_arcana_horn_cd_defense 1
execute as @a if score @s lost_arcana_wand_cd_spark < max_cd lost_arcana_wand_cd_spark run scoreboard players add @s lost_arcana_wand_cd_spark 1
execute as @a if score @s lost_arcana_wand_cd_lightning < max_cd lost_arcana_wand_cd_lightning run scoreboard players add @s lost_arcana_wand_cd_lightning 1
execute as @a if score @s lost_arcana_wand_cd_ice < max_cd lost_arcana_wand_cd_ice run scoreboard players add @s lost_arcana_wand_cd_ice 1
execute as @a if score @s lost_arcana_cd_light_brand < max_cd lost_arcana_cd_light_brand run scoreboard players add @s lost_arcana_cd_light_brand 1

# Remove charge display
execute as @a if score @s lost_arcana_cd_display = 1 lost_arcana_number run title @s actionbar ""

# Remove cast immunity tag
execute as @a if score @s lost_arcana_cast_immunity = 1 lost_arcana_number run tag @s remove lost_arcana_cast_immunity

# Wand tick
function lost_arcana:wand_spark/tick
function lost_arcana:wand_lightning/tick
function lost_arcana:wand_ice/tick
function lost_arcana:light_brand/tick


# Lanterns
execute as @e[tag=lost_arcana_light_marker] at @s run function lost_arcana:lantern/destroy_light
execute as @a at @s if data entity @s SelectedItem.components."minecraft:custom_data".lost_arcana_lantern run function lost_arcana:lantern/create_light
execute as @a at @s if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".lost_arcana_lantern run function lost_arcana:lantern/create_light


# Add max_stack_size component to egg and snowball item entities
execute as @e[type=item, nbt={Item:{id:"minecraft:egg"}}] run data merge entity @s {Item:{components:{max_stack_size:64}}}
execute as @e[type=item, nbt={Item:{id:"minecraft:snowball"}}] run data merge entity @s {Item:{components:{max_stack_size:64}}}

# Add enchantment glint to preexisting wand item entities
execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{lost_arcana_wand_spark:true}}}}] run data merge entity @s {Item:{components:{enchantment_glint_override:true,rarity:"uncommon","minecraft:custom_data":{lost_arcana_wand:true}}}}
execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{lost_arcana_wand_lightning:true}}}}] run data merge entity @s {Item:{components:{enchantment_glint_override:true,rarity:"uncommon","minecraft:custom_data":{lost_arcana_wand:true}}}}
execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{lost_arcana_wand_ice:true}}}}] run data merge entity @s {Item:{components:{enchantment_glint_override:true,rarity:"uncommon","minecraft:custom_data":{lost_arcana_wand:true}}}}

# Set Light Brand pedestal item frame to invulnerable if there is nothing inside of it
execute as @e[type=glow_item_frame, nbt={Item:{}}] run data modify entity @s Invulnerable set value false
execute as @e[type=glow_item_frame, nbt=!{Item:{}}] run data modify entity @s Invulnerable set value true


# Reset deathCount
#scoreboard players set @a lost_arcana_dead 0



# Reenable doFireTick
# execute if score doFireTick lost_arcana_variable = 1 lost_arcana_number run gamerule doFireTick true
# execute if score doFireTick lost_arcana_variable > 0 lost_arcana_number run scoreboard players remove doFireTick lost_arcana_number 1

# Debug
#execute as @e[type=marker] at @s run particle minecraft:composter ~ ~ ~ 0 0 0 0 1
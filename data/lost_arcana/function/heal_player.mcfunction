## Heal player

# Get current and max health
execute store result score health lost_arcana_variable run data get entity @s Health 100
execute as @s store result score max_health lost_arcana_variable run attribute @s generic.max_health get 100

# Get missing health
scoreboard players operation missing_health lost_arcana_variable = max_health lost_arcana_variable
scoreboard players operation missing_health lost_arcana_variable -= health lost_arcana_variable

# Apply instant health effect
effect give @s instant_health 1 31 true

# Deal damage
# cannot deal damage from scoreboard, so i'll have to shelve this one
damage @s 10

#execute store result entity @s Health float 0.01 run scoreboard players get health lost_arcana_variable
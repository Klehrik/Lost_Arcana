## Light Brand : Move

# Run twice to allow moving at 40 blocks/sec
tag @s add lost_arcana_proj_hit

function lost_arcana:projectile_move
execute at @s positioned ~ ~-1 ~ as @e[type=!marker, type=!item, tag=!lost_arcana_cast_immunity, distance=..1.2, limit=1] run function lost_arcana:light_brand/hit_entity
function lost_arcana:projectile_move
execute at @s positioned ~ ~-1 ~ as @e[type=!marker, type=!item, tag=!lost_arcana_cast_immunity, distance=..1.2, limit=1] run function lost_arcana:light_brand/hit_entity

tag @s remove lost_arcana_proj_hit

# Create particles
particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0 2

# Lifetime
scoreboard players add @s lost_arcana_lifetime 1
execute if score @s lost_arcana_lifetime >= @s lost_arcana_max_lifetime run particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 0 6
execute if score @s lost_arcana_lifetime >= @s lost_arcana_max_lifetime run kill
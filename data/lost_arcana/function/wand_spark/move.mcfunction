## Wand Spark : Move

# Hit entity or block
# For hitting entities, cannot do so in the first two tick (0.1 seconds) so it doesn't hit the caster
# Run twice to allow moving at 40 blocks/sec
tag @s add lost_arcana_proj_hit

function lost_arcana:projectile_move
execute at @s positioned ~ ~-1 ~ as @e[type=!marker, type=!item, tag=!lost_arcana_cast_immunity, distance=..1.2, limit=1] run function lost_arcana:wand_spark/hit_entity
function lost_arcana:wand_spark/hit_block
function lost_arcana:projectile_move
execute at @s positioned ~ ~-1 ~ as @e[type=!marker, type=!item, tag=!lost_arcana_cast_immunity, distance=..1.2, limit=1] run function lost_arcana:wand_spark/hit_entity
function lost_arcana:wand_spark/hit_block

tag @s remove lost_arcana_proj_hit

# Create particles
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 1 force

# Lifetime
scoreboard players add @s lost_arcana_lifetime 1
execute if score @s lost_arcana_lifetime >= @s lost_arcana_max_lifetime run particle minecraft:large_smoke ~ ~ ~ 0.25 0.25 0.25 0 6 force
execute if score @s lost_arcana_lifetime >= @s lost_arcana_max_lifetime run kill
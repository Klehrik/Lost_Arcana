## Projectile Move

# Store current Pos in scoreboard
execute store result score pos0 lost_arcana_variable run data get entity @s Pos[0] 10000
execute store result score pos1 lost_arcana_variable run data get entity @s Pos[1] 10000
execute store result score pos2 lost_arcana_variable run data get entity @s Pos[2] 10000

# Store current "Motion" in scoreboard
# Motion itself is used to just store the position increment amounts
execute store result score motion0 lost_arcana_variable run data get entity @s Motion[0] 10000
execute store result score motion1 lost_arcana_variable run data get entity @s Motion[1] 10000
execute store result score motion2 lost_arcana_variable run data get entity @s Motion[2] 10000

# Add stored "Motion" to stored Pos
scoreboard players operation pos0 lost_arcana_variable += motion0 lost_arcana_variable
scoreboard players operation pos1 lost_arcana_variable += motion1 lost_arcana_variable
scoreboard players operation pos2 lost_arcana_variable += motion2 lost_arcana_variable

# Store result back into Pos
data modify storage lost_arcana:data Pos set value [0.0, 0.0, 0.0]
execute store result storage lost_arcana:data Pos[0] double 0.0001 run scoreboard players get pos0 lost_arcana_variable
execute store result storage lost_arcana:data Pos[1] double 0.0001 run scoreboard players get pos1 lost_arcana_variable
execute store result storage lost_arcana:data Pos[2] double 0.0001 run scoreboard players get pos2 lost_arcana_variable
data modify entity @s Pos set from storage lost_arcana:data Pos
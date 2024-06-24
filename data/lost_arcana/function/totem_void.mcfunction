## Totem void

execute as @s store result score y lost_arcana_variable run data get entity @s Pos[1]

execute if score y lost_arcana_variable <= -63 lost_arcana_number run damage @s 100 generic
execute if score y lost_arcana_variable <= -63 lost_arcana_number run effect give @s slow_falling 1 0
execute if score y lost_arcana_variable <= -63 lost_arcana_number run execute in the_end run tp @s 0 64 0
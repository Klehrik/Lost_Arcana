## Level Minimum

execute store result score current lost_arcana_variable run xp query @s levels
execute if score current lost_arcana_variable < @s lost_arcana_level_min run xp set @s 0 points
execute if score current lost_arcana_variable < @s lost_arcana_level_min run xp add @s 1 levels
execute if score current lost_arcana_variable < @s lost_arcana_level_min run function lost_arcana:level_min
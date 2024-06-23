## Apply speed to arrow

tag @s add lost_arcana_arrow_speed_modified

data modify storage lost_arcana:data Motion set from entity @s Motion

execute as @s[tag= lost_arcana_sniper_arrow_level_1] run execute store result storage lost_arcana:data Motion[0] double 0.00013 run data get storage lost_arcana:data Motion[0] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_1] run execute store result storage lost_arcana:data Motion[1] double 0.00013 run data get storage lost_arcana:data Motion[1] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_1] run execute store result storage lost_arcana:data Motion[2] double 0.00013 run data get storage lost_arcana:data Motion[2] 10000

execute as @s[tag= lost_arcana_sniper_arrow_level_2] run execute store result storage lost_arcana:data Motion[0] double 0.00016 run data get storage lost_arcana:data Motion[0] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_2] run execute store result storage lost_arcana:data Motion[1] double 0.00016 run data get storage lost_arcana:data Motion[1] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_2] run execute store result storage lost_arcana:data Motion[2] double 0.00016 run data get storage lost_arcana:data Motion[2] 10000

execute as @s[tag= lost_arcana_sniper_arrow_level_3] run execute store result storage lost_arcana:data Motion[0] double 0.00019 run data get storage lost_arcana:data Motion[0] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_3] run execute store result storage lost_arcana:data Motion[1] double 0.00019 run data get storage lost_arcana:data Motion[1] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_3] run execute store result storage lost_arcana:data Motion[2] double 0.00019 run data get storage lost_arcana:data Motion[2] 10000

execute as @s[tag= lost_arcana_sniper_arrow_level_4] run execute store result storage lost_arcana:data Motion[0] double 0.00022 run data get storage lost_arcana:data Motion[0] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_4] run execute store result storage lost_arcana:data Motion[1] double 0.00022 run data get storage lost_arcana:data Motion[1] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_4] run execute store result storage lost_arcana:data Motion[2] double 0.00022 run data get storage lost_arcana:data Motion[2] 10000

execute as @s[tag= lost_arcana_sniper_arrow_level_5] run execute store result storage lost_arcana:data Motion[0] double 0.00025 run data get storage lost_arcana:data Motion[0] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_5] run execute store result storage lost_arcana:data Motion[1] double 0.00025 run data get storage lost_arcana:data Motion[1] 10000
execute as @s[tag= lost_arcana_sniper_arrow_level_5] run execute store result storage lost_arcana:data Motion[2] double 0.00025 run data get storage lost_arcana:data Motion[2] 10000

data modify entity @s Motion set from storage lost_arcana:data Motion
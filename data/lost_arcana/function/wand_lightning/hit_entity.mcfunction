## Wand Lightning : Hit Entity

# Get casting player
execute as @e[tag=lost_arcana_proj_hit] run function lost_arcana:player_id/match

# Hit effect
damage @s 2 magic by @a[tag=lost_arcana_my_player, limit=1] from @a[tag=lost_arcana_my_player, limit=1]
effect give @s slowness 2 6
particle minecraft:scrape ~ ~1 ~ 0.25 0.25 0.25 0.5 6 force
playsound minecraft:entity.bee.hurt neutral @a ~ ~ ~ 1 2

# Kill projectile
kill @e[tag=lost_arcana_proj_hit]

function lost_arcana:player_id/match_end
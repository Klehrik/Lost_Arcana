## Light Brand : Hit Entity

# Get casting player
execute as @e[tag=lost_arcana_proj_hit] run function lost_arcana:player_id/match

# Hit effect
damage @s 6 magic by @a[tag=lost_arcana_my_player, limit=1] from @a[tag=lost_arcana_my_player, limit=1]
particle minecraft:totem_of_undying ~ ~1 ~ 0.25 0.25 0.25 0.5 6 force
playsound minecraft:item.firecharge.use neutral @a ~ ~ ~ 1 2

# Kill projectile
kill @e[tag=lost_arcana_proj_hit]

function lost_arcana:player_id/match_end
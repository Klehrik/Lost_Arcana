## Wand Spark : Hit Entity

# Get casting player
execute as @e[tag=lost_arcana_proj_hit] run function lost_arcana:player_id/match

# Hit effect
damage @s 2 magic by @a[tag=lost_arcana_my_player, limit=1] from @a[tag=lost_arcana_my_player, limit=1]
data modify entity @s Fire set value 100

# Kill projectile
kill @e[tag=lost_arcana_proj_hit]

function lost_arcana:player_id/match_end
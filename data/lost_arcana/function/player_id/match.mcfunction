## Player ID : Match

# Assigns the tag "lost_arcana_my_player" to the matching player
# Remove the tag from the player after use (call function lost_arcana:player_id/match_end)

tag @s add lost_arcana_this
execute as @a if score @s lost_arcana_player_id = @e[tag=lost_arcana_this, limit=1] lost_arcana_player_id run tag @s add lost_arcana_my_player
tag @s remove lost_arcana_this
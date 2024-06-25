## Player ID : Copy

# Copies the player's "lost_arcana_player_id" into the entity's own scoreboard value
# Add and remove the tag "lost_arcana_player" from the target player

scoreboard players operation @s lost_arcana_player_id = @a[tag=lost_arcana_player, limit=1] lost_arcana_player_id
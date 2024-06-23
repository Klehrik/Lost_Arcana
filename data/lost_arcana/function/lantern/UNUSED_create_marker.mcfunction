## Lantern : Create marker

summon marker ~ ~ ~
tag @e[type=marker, distance=..1] add lost_arcana_lantern_marker

# Set lantern_id
scoreboard players operation @e[type=marker, distance=..1] lost_arcana_lantern_id = @a[distance=..1, limit=1] lost_arcana_lantern_id
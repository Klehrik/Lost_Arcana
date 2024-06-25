## Prevent Ender Chest opening 2

execute at @e[tag=lost_arcana_echest_this_marker, limit=1] run tp @a[tag=lost_arcana_echest_this_player] ~ ~ ~ facing entity @e[tag=lost_arcana_echest_this_marker_face, limit=1]
kill @e[tag=lost_arcana_echest_this_marker]
kill @e[tag=lost_arcana_echest_this_marker_face]
tag @a[tag=lost_arcana_echest_this_player] remove lost_arcana_echest_this_player
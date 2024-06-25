## Prevent Ender Chest opening

tag @s add lost_arcana_echest_this_player
tp @s 0 -64 0
advancement revoke @s only lost_arcana:prevent_echest_open
summon marker ~ ~ ~ {Tags:["lost_arcana_echest_this_marker"]}
summon marker ^ ^ ^1 {Tags:["lost_arcana_echest_this_marker_face"]}

execute as @s run schedule function lost_arcana:prevent_echest_open_2 2t
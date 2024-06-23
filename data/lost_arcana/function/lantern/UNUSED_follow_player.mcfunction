## Lantern : Follow player

fill ~ ~ ~ ~ ~ ~ air replace light

tag @s add lost_arcana_lantern_marker_this
execute as @a at @s run execute if score @s lost_arcana_lantern_id = @e[tag=lost_arcana_lantern_marker_this, limit=1] lost_arcana_lantern_id run function lost_arcana:lantern/follow_player_2
tag @s remove lost_arcana_lantern_marker_this

execute as @s[tag=lost_arcana_lantern_marker_has_player] at @s run function lost_arcana:lantern/place_light
execute as @s[tag=!lost_arcana_lantern_marker_has_player] at @s run kill
tag @s remove lost_arcana_lantern_marker_has_player
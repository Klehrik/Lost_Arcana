## Ender Satchel : Tick

# Get owner
function lost_arcana:player_id/match

# Teleport in front of owner
execute at @a[tag=lost_arcana_my_player, limit=1] positioned ^ ^ ^1 run tp @s ~ ~1 ~
data modify entity @s Motion set value [0.0, 0.0, 0.0]

# Clear items and destroy self if item is no longer being held
execute unless data entity @a[tag=lost_arcana_my_player, limit=1] SelectedItem.components."minecraft:custom_data".lost_arcana_ender_satchel run function lost_arcana:ender_satchel/destroy

function lost_arcana:player_id/match_end
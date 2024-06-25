## Ender Satchel : Create

# Copy player ID
tag @s add lost_arcana_player
execute positioned ~ ~1 ~ run summon chest_minecart ^ ^ ^1 {Silent:true, Invulnerable:true, NoGravity:true, Tags:["lost_arcana_ender_satchel", "this_cart"]}
execute as @e[tag=this_cart] run function lost_arcana:player_id/copy
tag @s remove lost_arcana_player

# Copy player Ender Chest contents to the minecart
item replace entity @e[tag=this_cart] container.0 from entity @s enderchest.0
item replace entity @e[tag=this_cart] container.1 from entity @s enderchest.1
item replace entity @e[tag=this_cart] container.2 from entity @s enderchest.2
item replace entity @e[tag=this_cart] container.3 from entity @s enderchest.3
item replace entity @e[tag=this_cart] container.4 from entity @s enderchest.4
item replace entity @e[tag=this_cart] container.5 from entity @s enderchest.5
item replace entity @e[tag=this_cart] container.6 from entity @s enderchest.6
item replace entity @e[tag=this_cart] container.7 from entity @s enderchest.7
item replace entity @e[tag=this_cart] container.8 from entity @s enderchest.8
item replace entity @e[tag=this_cart] container.9 from entity @s enderchest.9
item replace entity @e[tag=this_cart] container.10 from entity @s enderchest.10
item replace entity @e[tag=this_cart] container.11 from entity @s enderchest.11
item replace entity @e[tag=this_cart] container.12 from entity @s enderchest.12
item replace entity @e[tag=this_cart] container.13 from entity @s enderchest.13
item replace entity @e[tag=this_cart] container.14 from entity @s enderchest.14
item replace entity @e[tag=this_cart] container.15 from entity @s enderchest.15
item replace entity @e[tag=this_cart] container.16 from entity @s enderchest.16
item replace entity @e[tag=this_cart] container.17 from entity @s enderchest.17
item replace entity @e[tag=this_cart] container.18 from entity @s enderchest.18
item replace entity @e[tag=this_cart] container.19 from entity @s enderchest.19
item replace entity @e[tag=this_cart] container.20 from entity @s enderchest.20
item replace entity @e[tag=this_cart] container.21 from entity @s enderchest.21
item replace entity @e[tag=this_cart] container.22 from entity @s enderchest.22
item replace entity @e[tag=this_cart] container.23 from entity @s enderchest.23
item replace entity @e[tag=this_cart] container.24 from entity @s enderchest.24
item replace entity @e[tag=this_cart] container.25 from entity @s enderchest.25
item replace entity @e[tag=this_cart] container.26 from entity @s enderchest.26

# Remove tags
execute as @e[tag=this_cart] run tag @s remove this_cart
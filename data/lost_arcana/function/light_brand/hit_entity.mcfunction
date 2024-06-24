## Light Brand : Hit Entity

# Get casting player
execute as @e[tag=lost_arcana_proj_hit] run execute as @a run execute if score @s lost_arcana_proj_id_light_brand = @e[tag=lost_arcana_proj_hit, limit=1] lost_arcana_proj_id_light_brand run tag @s add lost_arcana_proj_caster

# Hit effect
damage @s 6 magic by @a[tag=lost_arcana_proj_caster, limit=1] from @a[tag=lost_arcana_proj_caster, limit=1]
particle minecraft:totem_of_undying ~ ~1 ~ 0.25 0.25 0.25 0.5 6 force
playsound minecraft:item.firecharge.use neutral @a ~ ~ ~ 1 2

# Kill projectile
execute as @a[tag=lost_arcana_proj_caster, limit=1] run tag @s remove lost_arcana_proj_caster
kill @e[tag=lost_arcana_proj_hit]
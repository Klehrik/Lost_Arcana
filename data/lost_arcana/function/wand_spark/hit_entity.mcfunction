## Wand Spark : Hit Entity

# Get casting player
execute as @e[tag=lost_arcana_proj_hit] run execute as @a run execute if score @s lost_arcana_proj_id_wand_spark = @e[tag=lost_arcana_proj_hit, limit=1] lost_arcana_proj_id_wand_spark run tag @s add lost_arcana_proj_caster

# Hit effect
damage @s 2 magic by @a[tag=lost_arcana_proj_caster, limit=1] from @a[tag=lost_arcana_proj_caster, limit=1]
data modify entity @s Fire set value 100

# Kill projectile
execute as @a[tag=lost_arcana_proj_caster, limit=1] run tag @s remove lost_arcana_proj_caster
kill @e[tag=lost_arcana_proj_hit]
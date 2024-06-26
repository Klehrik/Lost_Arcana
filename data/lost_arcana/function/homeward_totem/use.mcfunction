## Homeward Totem : Use

advancement revoke @s only lost_arcana:homeward_totem

# Erase experience
xp set @s 0 levels
xp set @s 0 points

# "Warp" home
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule showDeathMessages false
kill @s
schedule function lost_arcana:homeward_totem/reset_gamerules 3t
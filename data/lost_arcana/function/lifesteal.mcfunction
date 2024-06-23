## Lifesteal (heal attacker)

#execute if entity @s[dead] run execute on attacker run effect give @s regeneration 1 3

# scoreboard players set heal_amount lost_arcana_parameter 50000
# execute on attacker run function lost_arcana:heal_player
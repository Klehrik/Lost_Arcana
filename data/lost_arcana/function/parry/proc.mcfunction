## Parry : Proc

scoreboard players operation @s lost_arcana_display_parry_text = max_duration lost_arcana_display_parry_text
execute as @s[tag=lost_arcana_is_weak_parrying] run effect give @s strength 1 0
execute as @s[tag=lost_arcana_is_strong_parrying] run effect give @s strength 1 1

function lost_arcana:parry/end
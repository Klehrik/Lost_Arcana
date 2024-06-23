## Display horn charge time

scoreboard players set @s lost_arcana_cd_display 2

# Scale up current cd parameter (to avoid decimal result after division)
scoreboard players operation cd lost_arcana_parameter *= 10 lost_arcana_number

# Get ratio of scaled up current / max (should be between 0 and 10)
scoreboard players operation ratio lost_arcana_variable = cd lost_arcana_parameter
scoreboard players operation ratio lost_arcana_variable /= max_cd lost_arcana_parameter

execute if score ratio lost_arcana_variable = 0 lost_arcana_number run title @s actionbar [{"text": "░░░░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 1 lost_arcana_number run title @s actionbar [{"text": "▓", "color": "white"}, {"text": "░░░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 2 lost_arcana_number run title @s actionbar [{"text": "▓▓", "color": "white"}, {"text": "░░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 3 lost_arcana_number run title @s actionbar [{"text": "▓▓▓", "color": "white"}, {"text": "░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 4 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓", "color": "white"}, {"text": "░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 5 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓", "color": "white"}, {"text": "░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 6 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓", "color": "white"}, {"text": "░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 7 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓", "color": "white"}, {"text": "░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 8 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓▓", "color": "white"}, {"text": "░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 9 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓▓▓", "color": "white"}, {"text": "░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 10 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓▓▓▓", "color": "yellow"}]
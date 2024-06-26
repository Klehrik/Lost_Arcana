## Display in Red

execute if score ratio lost_arcana_variable = 0 lost_arcana_number run title @s actionbar [{"text": "░░░░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 1 lost_arcana_number run title @s actionbar [{"text": "▓", "color": "red"}, {"text": "░░░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 2 lost_arcana_number run title @s actionbar [{"text": "▓▓", "color": "red"}, {"text": "░░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 3 lost_arcana_number run title @s actionbar [{"text": "▓▓▓", "color": "red"}, {"text": "░░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 4 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓", "color": "red"}, {"text": "░░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 5 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓", "color": "red"}, {"text": "░░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 6 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓", "color": "red"}, {"text": "░░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 7 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓", "color": "red"}, {"text": "░░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 8 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓▓", "color": "red"}, {"text": "░░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 9 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓▓▓", "color": "red"}, {"text": "░", "color": "gray"}]
execute if score ratio lost_arcana_variable = 10 lost_arcana_number run title @s actionbar [{"text": "▓▓▓▓▓▓▓▓▓▓", "color": "red"}]
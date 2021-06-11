# Ran from game:ingame/power/down, game:ingame/power/up

scoreboard players operation #power_percent power = @s power
scoreboard players operation #power_percent power *= #multiplier power

title @p actionbar [{"score":{"name":"#power_percent","objective":"power"},"bold":true},{"text":"%"}]

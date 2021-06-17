# Ran from game:main

# start game
execute if score #start game matches 1 unless entity @e[tag=scanner] run function game:lobby/start/start

# information in actionbar
execute unless entity @e[tag=scanner] run title @a actionbar [{"text":"Open your Inventory to access your ","color":"yellow"},{"text":"color","color":"gold","bold":true},{"text":" and the ","color":"yellow"},{"text":"shop","color":"gold","bold":true}]

# inventory update checks
execute as @a[tag=join] at @s run function game:lobby/detect_inv

# options update checks
execute if block 50 51 50 dispenser run function game:lobby/detect_options
execute unless block 50 51 50 dispenser run function game:lobby/options

# cancel detect
execute as @p[scores={start_cancel=1..}] run function game:lobby/start/cancel

# Ran from game:lobby/options/start

execute if score #end game matches 1 run function game:reset
scoreboard players reset #end game 

execute store result score #players_ready game if entity @a
execute if score #players_ready game matches ..1 run function game:lobby/start/fail
execute if score #players_ready game matches 2.. run function game:lobby/start/success

# fix 0 health
execute as @a unless score @s health matches 20.. run function game:ingame/health_fix

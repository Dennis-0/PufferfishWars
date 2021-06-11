# Ran from #minecraft:tick

execute as @a[tag=!join] run function game:player_join
execute as @a[tag=join,scores={leave=1..}] run function game:player_rejoin

execute if score state game matches 0 as @a[gamemode=adventure] at @s unless data entity @s Inventory[{Slot:24b}] run function game:lobby/give_items
execute if score state game matches 0 run function game:lobby/main
execute if score state game matches 1 run function game:ingame/main

kill @e[type=item]

execute if entity @e[tag=scanner] run function perlin:100block

# triggers
execute if entity @p[scores={reset_game=1..}] as @p[scores={reset_game=1..}] at @s run function game:trigger/reset
execute if entity @p[scores={reset_confirm=1..}] run function game:reset
execute if entity @p[scores={reset_cancel=1..}] run scoreboard players reset @a reset_confirm
execute if entity @p[scores={reset_cancel=1..}] run scoreboard players reset @a reset_cancel

execute if entity @p[scores={end_round=1..}] as @p[scores={end_round=1..}] at @s run function game:trigger/end
execute if entity @p[scores={end_confirm=1..}] run function game:end
execute if entity @p[scores={end_cancel=1..}] run scoreboard players reset @a end_confirm
execute if entity @p[scores={end_cancel=1..}] run scoreboard players reset @a end_cancel

execute as @a[scores={tutorial=1..}] at @s run function game:trigger/tutorial

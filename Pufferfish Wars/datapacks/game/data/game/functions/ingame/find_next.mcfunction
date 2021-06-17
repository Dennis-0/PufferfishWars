# Ran from game:ingame/end_turn and game:lobby/player_order

execute if score #current player_order <= #players_total game run scoreboard players add #current player_order 1
execute if score #current player_order > #players_total game run scoreboard players set #current player_order 1

execute as @a[tag=inGame] if score #current player_order = @s player_order run tag @s add turn
execute unless entity @p[tag=turn] run schedule function game:ingame/find_next 1t

execute as @a[tag=turn] run function game:ingame/start_turn

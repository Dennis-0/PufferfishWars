# Ran from game:lobby/main

execute if entity @p[scores={reset_confirm=1}] run function game:end

scoreboard players reset reset game

scoreboard players reset @a
scoreboard players set @a points 0
scoreboard players set @a money 0
scoreboard players set @a multishot 0
scoreboard players set @a scatter 0
scoreboard players set @a lightning 0
scoreboard players set @a shower 0
scoreboard players set @a buy_armor 0
scoreboard players set @a buy_health 0
scoreboard players set @a buy_power 0
scoreboard players set @a buy_move 0
scoreboard players set @a buy_jump 0

scoreboard players set @a move_max 1000
scoreboard players set @a power_max 20

tag @a remove elytra
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.max_health base set 20

execute as @a run function game:lobby/reset_player

tellraw @a [{"text":"The game has been reset\n","color":"red","bold":true}]

scoreboard players set state game 0

scoreboard players add game_id game 1
scoreboard players operation @a game_id = game_id game

function game:lobby/options

scoreboard players enable @a reset_game

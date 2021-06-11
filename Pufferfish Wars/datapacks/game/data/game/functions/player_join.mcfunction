# Ran from game:main

gamemode adventure @s
spreadplayers 50 50 1 10 under 60 false @s

scoreboard players set @s leave 0
scoreboard players operation @s game_id = game_id game

tag @s remove elytra
tag @s remove ranked
tag @s remove inGame
tag @s add join

effect clear @s
effect give @s minecraft:instant_health 1 10
effect give @s minecraft:saturation 10 100 true

attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.attack_damage base set 0

scoreboard players set @s points 0
scoreboard players set @s money 0
scoreboard players set @s multishot 0
scoreboard players set @s scatter 0
scoreboard players set @s lightning 0
scoreboard players set @s shower 0
scoreboard players set @a buy_armor 0
scoreboard players set @s buy_health 0
scoreboard players set @s buy_power 0
scoreboard players set @s buy_move 0
scoreboard players set @s buy_jump 0

scoreboard players set @s move_max 1000
scoreboard players set @s power_max 20

clear @s

title @a times 10 100 10

execute if entity @s[team=] run team join White

tellraw @s {"text":""}
tellraw @s {"text":"-----------------------","bold":true}
tellraw @s [{"text":"Welcome to ","color":"gray"},{"text":"Pufferfish Wars","bold":true,"color":"yellow"},{"text":"!","color":"gray"}]
tellraw @s {"text":""}
tellraw @s {"text":"This is a turn based game where players try to hit eachother with pufferfishes, shot from crossbows, that explode on impact with a player or shortly after touching the ground.","color":"white"}
tellraw @s {"text":"-----------------------","bold":true}
tellraw @s [{"text":"Click here for a quick ","clickEvent":{"action":"run_command","value":"/execute if score state game matches 0 run tp @s 50 250 50"}},{"text":"[Tutorial]","clickEvent":{"action":"run_command","value":"/trigger tutorial"},"color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to the tutorial area","color":"gray"}]}}]
tellraw @s {"text":""}

scoreboard players enable @a reset_game
scoreboard players enable @s tutorial

execute if block -1 3 -1 stone run fill -30 0 -30 30 5 30 air replace stone

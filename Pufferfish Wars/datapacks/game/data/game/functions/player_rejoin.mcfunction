# Ran from game:main

gamemode adventure @s
spreadplayers 50 50 1 10 under 60 false @s

scoreboard players set @s leave 0
scoreboard players operation @s game_id = game_id game

tag @s remove ranked
tag @s remove inGame
tag @s add join

effect clear @s
effect give @s minecraft:instant_health 1 10
effect give @s minecraft:saturation 10 100 true

attribute @s minecraft:generic.attack_damage base set 0

clear @s

scoreboard players enable @a reset_game
scoreboard players enable @s tutorial

# Ran from game:ingame/end_turn

scoreboard players reset @a end_round
scoreboard players reset @a end_confirm
scoreboard players reset @a end_cancel
scoreboard players enable @a tutorial

scoreboard players set state game -1

scoreboard players set @a[scores={points=..0}] points 0

execute if entity @p[tag=inGame] if score players_left game matches 1 run tellraw @a [{"selector":"@a[tag=inGame]"},{"text":" survived the round!","color":"white"},{"text":" (+5 points)","color":"gray"}]
execute if entity @p[tag=inGame] if score players_left game matches 0 run tellraw @a [{"text":"No one survived the round!","color":"white"}]
execute if score players_left game matches 1 run scoreboard players add @a[tag=inGame] points 5
execute if score players_left game matches 1 run scoreboard players add @a[tag=inGame] money 5

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

execute store result score players_left game if entity @a[tag=inGame]
bossbar set players visible false
bossbar set wind visible false
bossbar set move visible false

execute as @a run function game:lobby/reset_player
tag @a remove turn
tag @a remove inGame

scoreboard players reset @a player_order

# remove lock options
data modify block 50 51 50 Lock set value ""

# generate new terrain
function terrain:generate_start

# winner check
scoreboard players reset #max_points points
scoreboard players operation #max_points points > @a points
execute as @a if score @s points = #max_points points if score @s points >= #goal points run function game:winner

scoreboard players set state game 0

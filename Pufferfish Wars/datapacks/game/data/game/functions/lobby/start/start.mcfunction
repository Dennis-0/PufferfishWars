# Ran from game:lobby/start/countdown

scoreboard players set state game 1
scoreboard players set #start game 0

scoreboard players reset @a tutorial
scoreboard players reset @a start_cancel
scoreboard players enable @a end_round

# lock options
data modify block 50 51 50 Lock set value "LOCKED"

title @a clear

tag @a[tag=!spectator] add inGame
gamemode adventure @a[tag=inGame]
#clear @a
execute as @a[tag=inGame] run spreadplayers 50 50 40 45 under 50 true @s
execute as @a[tag=inGame] at @s if block ~ ~-1 ~ cactus run spreadplayers ~ ~ 0 2 under 50 false @s

# initial scores
scoreboard players set @a[tag=inGame] chorus 0
scoreboard players set @a[tag=inGame] power 10
xp set @a[tag=inGame] 100 levels
xp set @a[tag=inGame] 365 points

# players bossbar
execute store result bossbar players max if entity @a[tag=inGame]
execute store result score #players_total game if entity @a[tag=inGame]
execute store result score #players_left game if entity @a[tag=inGame]
bossbar set players visible true

# wind
execute if score wind game matches 1 run function game:lobby/start/wind

# movement bossbar
bossbar set move visible true

# remove glowing in lobby
execute as @e[type=minecraft:shulker] run data modify entity @s Glowing set value 0

# glowing
execute if score glowing game matches 1 run effect give @a minecraft:glowing 1000000 0 true

# armor attributes
execute as @a[scores={buy_armor=0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[scores={buy_armor=1}] run attribute @s minecraft:generic.armor base set 2
execute as @a[scores={buy_armor=2}] run attribute @s minecraft:generic.armor base set 4
execute as @a[scores={buy_armor=3}] run attribute @s minecraft:generic.armor base set 6
execute as @a[scores={buy_armor=4}] run attribute @s minecraft:generic.armor base set 8
execute as @a[scores={buy_armor=5}] run attribute @s minecraft:generic.armor base set 10

# health attributes
execute as @a[scores={buy_health=0}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={buy_health=1}] run attribute @s minecraft:generic.max_health base set 22
execute as @a[scores={buy_health=2}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={buy_health=3}] run attribute @s minecraft:generic.max_health base set 26
execute as @a[scores={buy_health=4}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={buy_health=5}] run attribute @s minecraft:generic.max_health base set 30
execute as @a[scores={buy_health=6}] run attribute @s minecraft:generic.max_health base set 32
execute as @a[scores={buy_health=7}] run attribute @s minecraft:generic.max_health base set 34
execute as @a[scores={buy_health=8}] run attribute @s minecraft:generic.max_health base set 36
execute as @a[scores={buy_health=9}] run attribute @s minecraft:generic.max_health base set 38
execute as @a[scores={buy_health=10}] run attribute @s minecraft:generic.max_health base set 40

# initial effects
effect give @a[tag=inGame] minecraft:hunger 100 255 true
#effect give @a minecraft:instant_health 1 100 true

# rank players by total score
scoreboard players operation #number player_order = #players_total game
scoreboard players set #current player_order 0
scoreboard players reset @a player_order

function game:lobby/player_order

#Ran from game:lobby/start/start
# generate random value for wind power (low numbers high chance, high numbers low chance)

scoreboard players set wind_power game 0
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rng"]}

# calculations
execute store result score #rng1 game run data get entity @e[type=minecraft:area_effect_cloud,tag=rng,limit=1] UUID[0]
execute store result score #rng2 game run data get entity @e[type=minecraft:area_effect_cloud,tag=rng,limit=1] UUID[1]
scoreboard players operation #rng1 game %= #wind_factor game
scoreboard players operation #rng2 game %= #wind_factor game
execute if score #rng1 game > #rng2 game run scoreboard players operation wind_power game = #rng2 game
execute if score #rng1 game <= #rng2 game run scoreboard players operation wind_power game = #rng1 game
scoreboard players add wind_power game 1

# set bossbar
bossbar set wind name [{"text":"Wind: "},{"score":{"name":"wind_power","objective":"game"},"color":"white"},{"text":" East!"}]
execute store result bossbar wind value run scoreboard players get wind_power game
bossbar set wind visible true

# Ran from game:main

# inventory update checks
execute as @a[tag=turn,tag=!cb_used] at @s run function game:ingame/detect_inv

# movement check
execute as @a[tag=turn] at @s run function game:ingame/move_calc

# power changed
execute as @a[tag=turn,scores={power_up=1..}] at @s run function game:ingame/power/up
execute as @a[tag=turn,scores={power_down=1..}] at @s run function game:ingame/power/down

# if player died
execute as @a[scores={death=1..}] at @s run function game:ingame/player_killed

# freeze players
execute as @a[gamemode=adventure,tag=inGame] unless entity @s[tag=turn,tag=!cb_used] run effect give @s minecraft:jump_boost 1 200 true
execute as @a[gamemode=adventure,tag=inGame] unless entity @s[tag=turn,tag=!cb_used] run effect give @s minecraft:slowness 1 200 true

execute as @a if entity @s[nbt={foodLevel:0}] run effect clear @s minecraft:hunger
execute as @a if entity @s[nbt={foodLevel:0}] run effect give @s minecraft:saturation 3 1 true

# update bossbar
execute store result score players_left game if entity @a[tag=inGame]
execute store result bossbar minecraft:players value if entity @a[tag=inGame]
bossbar set minecraft:players name [{"selector":"@a[tag=turn]"},{"text":"'s turn - Players left: ","color":"#cccccc"},{"score":{"name":"players_left","objective":"game"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"#players_total","objective":"game"},"color":"white"}]
execute if score players_left game matches ..1 unless entity @e[type=minecraft:pufferfish] as @p[tag=turn] run function game:ingame/end_turn

# remove poison
effect clear @a minecraft:poison

# time out
execute if entity @p[tag=turn,tag=!cb_used] run scoreboard players remove time_out game 1
execute if score time_out game matches ..0 run function game:ingame/end_turn
execute if score time_out game matches 200 run tellraw @p[tag=turn] {"text":"Your turn will end in 10 seconds!","italic":true,"color":"dark_gray"}
execute if score time_out game matches 200 as @p[tag=turn] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 2 .5

# player out of map
execute as @p[tag=inGame,x=-50,z=-50,y=0,dx=200,dz=200,dy=-10] run kill @s
execute if entity @p[tag=turn,tag=!cb_used,x=-50,z=-50,y=0,dx=200,dz=200,dy=-10] run schedule function game:ingame/end_turn 5t

# player with turn not ingame
execute unless entity @p[tag=turn] if score #turn_active game matches 1 run function game:ingame/end_turn

# failsafe for shooting advancement
execute as @e[type=minecraft:arrow,tag=!shoot] run tell Denniss advancement failed
execute if entity @e[type=minecraft:arrow,tag=!shoot] run function game:ingame/projectile/shoot

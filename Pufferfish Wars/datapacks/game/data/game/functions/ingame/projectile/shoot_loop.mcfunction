execute as @e[type=minecraft:pufferfish,tag=!explosion_timer] at @s unless block ~ ~-.1 ~ air run tag @s add explosion_timer
## explosion
scoreboard players add @e[type=minecraft:pufferfish,tag=explosion_timer] explosion 1 
execute as @e[type=minecraft:pufferfish] at @s if score @s[tag=explosion_timer] explosion matches 2 run data modify entity @s PuffState set value 1
execute as @e[type=minecraft:pufferfish] at @s if score @s[tag=explosion_timer] explosion matches 11 run data modify entity @s PuffState set value 2
execute as @e[type=minecraft:pufferfish] at @s if score @s[tag=explosion_timer] explosion matches 20.. run function game:ingame/projectile/explode
execute as @e[type=minecraft:pufferfish] at @s if entity @a[tag=inGame,tag=!turn,distance=..1.5] run function game:ingame/projectile/explode
execute as @e[type=minecraft:pufferfish,tag=scattered] at @s unless block ~ ~-.1 ~ air run function game:ingame/projectile/explode
execute as @e[type=minecraft:pufferfish,x=-50,z=-50,y=-10,dx=200,dz=200,dy=-100] at @s run function game:ingame/projectile/explode

# lightning effects
execute as @e[type=minecraft:pufferfish,tag=lightning,nbt={PuffState:1}] at @s run particle minecraft:smoke ~ ~ ~ .5 .5 .5 0 1
execute as @e[type=minecraft:pufferfish,tag=lightning,nbt={PuffState:2}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0 1

# add wind to motion
execute if score wind game matches 1 as @e[type=minecraft:pufferfish] store result score #motionx game run data get entity @s Motion[0] 1000
execute if score wind game matches 1 run scoreboard players operation #motionx game += wind_power game
execute if score wind game matches 1 as @e[type=minecraft:pufferfish] at @s if block ~ ~-1 ~ air store result entity @s Motion[0] double 0.001 run scoreboard players get #motionx game 

# shower
execute if entity @e[tag=shower] run scoreboard players add #timer shower 1
execute if score #timer shower matches 10 as @e[type=minecraft:pufferfish,tag=shower] at @s if block ~ ~-1 ~ air run function game:ingame/projectile/shower

# repeat
execute if entity @e[type=minecraft:pufferfish] run schedule function game:ingame/projectile/shoot_loop 1t

execute if score state game matches 1 unless entity @e[type=minecraft:pufferfish] run schedule function game:ingame/end_turn 30t

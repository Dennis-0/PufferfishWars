summon minecraft:pufferfish ~ ~ ~ {Invulnerable:1b,DeathTime:19s,FromBucket:1b,Glowing:1b}
#data modify entity @e[type=pufferfish,distance=..1,sort=nearest,limit=1] Motion set from entity @s Motion

execute store result score #motionx game run data get entity @s Motion[0] 1000
execute store result score #motiony game run data get entity @s Motion[1] 1000
execute store result score #motionz game run data get entity @s Motion[2] 1000

scoreboard players operation #motionx game *= @p[tag=turn] power
scoreboard players operation #motiony game *= @p[tag=turn] power
scoreboard players operation #motionz game *= @p[tag=turn] power

execute store result entity @e[type=pufferfish,distance=..1,sort=nearest,limit=1] Motion[0] double 0.0001 run scoreboard players get #motionx game
execute store result entity @e[type=pufferfish,distance=..1,sort=nearest,limit=1] Motion[1] double 0.0001 run scoreboard players get #motiony game
execute store result entity @e[type=pufferfish,distance=..1,sort=nearest,limit=1] Motion[2] double 0.0001 run scoreboard players get #motionz game

data modify entity @e[type=pufferfish,distance=..1,sort=nearest,limit=1] Rotation set from entity @s Rotation
kill @s

execute as @e[type=pufferfish,team=] run function game:ingame/projectile/color

summon minecraft:pufferfish ~ ~1 ~ {Invulnerable:1b,Tags:["scattered"],DeathTime:19s,Glowing:1b}
execute as @e[tag=scattered,sort=nearest,limit=1,tag=!motion] at @s run function game:ingame/projectile/scatter/direction

execute as @e[type=pufferfish,team=,sort=nearest,limit=1] run function game:ingame/projectile/color

scoreboard players remove scatter count 1
execute unless score scatter count matches 0 run function game:ingame/projectile/scatter/spawn
execute if score scatter count matches 0 run scoreboard players set scatter count 5
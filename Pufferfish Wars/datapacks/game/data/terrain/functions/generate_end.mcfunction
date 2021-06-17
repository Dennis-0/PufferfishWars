fill 0 49 101 0 0 101 air

execute if entity @e[tag=generating,tag=forest] run fill 0 1 0 100 1 100 minecraft:green_concrete_powder replace air
execute if entity @e[tag=generating,tag=mountain] run fill 0 1 0 100 1 100 minecraft:white_concrete_powder replace air


data merge entity @e[type=minecraft:end_crystal,limit=1] {BeamTarget:{X:50,Y:49,Z:50}}

execute if entity @e[tag=generating,tag=desert] run scoreboard players set #tree game 100
execute unless entity @e[tag=generating,tag=desert] run scoreboard players set #tree game 30
execute if score trees game matches 1 as @e[tag=tree,limit=1] at @s run function terrain:trees

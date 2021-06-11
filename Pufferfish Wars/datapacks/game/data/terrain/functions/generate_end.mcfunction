fill 0 49 101 0 0 101 air
data merge entity @e[type=minecraft:end_crystal,limit=1] {BeamTarget:{X:50,Y:49,Z:50}}

execute if entity @e[tag=generating,tag=desert] run scoreboard players set #tree game 60
execute unless entity @e[tag=generating,tag=desert] run scoreboard players set #tree game 20
execute if score trees game matches 1 as @e[tag=tree,limit=1] at @s run function terrain:trees

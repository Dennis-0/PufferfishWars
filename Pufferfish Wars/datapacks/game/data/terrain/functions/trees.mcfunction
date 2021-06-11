spreadplayers 50 50 0 45 under 50 true @s

execute if entity @e[tag=generating,tag=forest] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ lime_concrete_powder run function terrain:oak_tree
execute if entity @e[tag=generating,tag=mountain] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ green_concrete_powder run function terrain:spruce_tree
execute if entity @e[tag=generating,tag=desert] run fill ~ ~ ~ ~ ~2 ~ cactus

scoreboard players remove #tree game 1
execute unless score #tree game matches 0 as @e[tag=tree,limit=1] at @s run function terrain:trees

spreadplayers 50 50 0 45 under 50 true @s

execute if entity @e[tag=generating,tag=forest] unless entity @e[tag=tree_marker,distance=..8] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ lime_concrete_powder run function terrain:oak_tree
execute if entity @e[tag=generating,tag=mountain] unless entity @e[tag=tree_marker,distance=..10] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ green_concrete_powder run function terrain:spruce_tree
execute if entity @e[tag=generating,tag=desert] unless entity @e[tag=tree_marker,distance=..2] run setblock ~ ~ ~ cactus
execute if entity @e[tag=generating,tag=desert] unless entity @e[tag=tree_marker,distance=..2] if predicate terrain:chance run setblock ~ ~1 ~ cactus
execute if entity @e[tag=generating,tag=desert] unless entity @e[tag=tree_marker,distance=..2] if predicate terrain:chance run fill ~ ~1 ~ ~ ~2 ~ cactus

execute unless block ~ ~ ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,Tags:["tree_marker"]}

scoreboard players remove #tree game 1
execute unless score #tree game matches 0 as @e[tag=tree,limit=1] at @s run function terrain:trees

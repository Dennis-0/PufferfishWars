data modify entity @e[type=minecraft:end_crystal,limit=1] BeamTarget.Z set from entity @s Pos[2]
kill @e[type=falling_block]

#get location in score
execute store result score @s perlinx run data get entity @s Pos[0] 600
execute store result score @s perliny run data get entity @s Pos[2] 600

#offsets
execute store result score @s rng1 run data get entity @s UUID[0]
execute store result score @s rng2 run data get entity @s UUID[1]

scoreboard players operation @s perlinx += @s rng1
scoreboard players operation @s perliny += @s rng2

#generate noise
function #perlin:noise

#set block at corresponding height
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:[PlaceBlock]} 
execute if entity @e[tag=forest,tag=generating] store result entity @e[tag=PlaceBlock,limit=1] Pos[1] double 0.002 run scoreboard players get @s perlinOutput
execute if entity @e[tag=mountain,tag=generating] store result entity @e[tag=PlaceBlock,limit=1] Pos[1] double 0.003 run scoreboard players get @s perlinOutput
execute if entity @e[tag=desert,tag=generating] store result entity @e[tag=PlaceBlock,limit=1] Pos[1] double 0.001 run scoreboard players get @s perlinOutput

execute at @e[tag=PlaceBlock] run fill ~ 49 ~ ~ 0 ~ air
execute if entity @e[tag=forest,tag=generating] at @e[tag=PlaceBlock] run fill ~ 1 ~ ~ ~ ~ green_concrete_powder replace air
execute if entity @e[tag=forest,tag=generating] at @e[tag=PlaceBlock] run setblock ~ 0 ~ green_concrete
execute if entity @e[tag=mountain,tag=generating] at @e[tag=PlaceBlock] run fill ~ 1 ~ ~ ~ ~ white_concrete_powder replace air
execute if entity @e[tag=mountain,tag=generating] at @e[tag=PlaceBlock] run setblock ~ 0 ~ white_concrete
execute if entity @e[tag=desert,tag=generating] at @e[tag=PlaceBlock] run fill ~ 1 ~ ~ ~ ~ sand replace air
execute if entity @e[tag=desert,tag=generating] at @e[tag=PlaceBlock] run setblock ~ 0 ~ smooth_sandstone

kill @e[tag=PlaceBlock]

#move to next block
tp @s ~1 ~ ~

#test if out of bounds and tp to next row or kill armorstand
execute store result score @s perlinx run data get entity @s Pos[0] 1
execute store result score @s perliny run data get entity @s Pos[2] 1

execute if score @s perlinx > #max perlinx run tp @s 0 ~ ~1
execute if score @s perlinx > #max perlinx run title @a actionbar [{"text":"Generating ","color":"#cccccc","bold":false},{"selector":"@e[tag=generating]","bold":true},{"text":" - [","color":"#cccccc","bold":false},{"score":{"name":"@s","objective":"perliny"},"bold":true},{"text":"%]","color":"#cccccc"}]

execute if score @s perliny > #max perliny run function terrain:generate_end
execute if score @s perliny > #max perliny run kill @s

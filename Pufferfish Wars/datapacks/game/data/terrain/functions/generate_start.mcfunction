tag @e[tag=terrain] remove generating
execute if entity @e[tag=random,tag=selected] run tag @e[tag=terrain,tag=!random,sort=random,limit=1] add generating 
execute if entity @e[tag=!random,tag=selected] run tag @e[tag=terrain,tag=selected] add generating

execute as @e[type=minecraft:shulker] run data modify entity @s Glowing set value 0
execute as @e[type=minecraft:shulker,tag=selected] run data modify entity @s Glowing set value 1

kill @e[tag=scanner]
summon minecraft:armor_stand 0 0 0 {Tags:["scanner"],NoGravity:1b}
execute as @e[type=minecraft:end_crystal] run data merge entity @s {BeamTarget:{X:50,Y:0,Z:50}}

execute if score #countdown game matches 1.. run function game:lobby/start/cancel

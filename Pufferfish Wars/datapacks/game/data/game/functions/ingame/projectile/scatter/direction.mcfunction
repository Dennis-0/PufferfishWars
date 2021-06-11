loot spawn ~ ~ ~ loot game:pufferfish
#data modify entity @e[tag=scattered,sort=nearest,limit=1] Motion set from entity @e[type=item,distance=..10,sort=nearest,limit=1] Motion

execute store result entity @s Motion[0] double 1 run data get entity @e[type=item,sort=nearest,limit=1] Motion[0] 2
execute store result entity @s Motion[1] double 1 run data get entity @e[type=item,sort=nearest,limit=1] Motion[1] 3
execute store result entity @s Motion[2] double 1 run data get entity @e[type=item,sort=nearest,limit=1] Motion[2] 2

kill @e[type=item,distance=..5]
tag @s add motion

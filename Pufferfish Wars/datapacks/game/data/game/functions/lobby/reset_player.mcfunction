gamemode adventure @s
tag @s remove ranked

effect clear @s
effect give @s minecraft:instant_health 1 10
effect give @s minecraft:saturation 10 100 true

attribute @s minecraft:generic.attack_damage base set 0

xp set @s 0 points
xp set @s 0 levels

execute positioned 0 50 0 unless entity @s[dx=100,dz=100,dy=100] run spreadplayers 50 50 1 10 under 60 false @s

function game:lobby/give_items

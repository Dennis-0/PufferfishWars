execute unless entity @e[type=minecraft:armor_stand,tag=freeze] align xz run summon minecraft:armor_stand ~.5 ~ ~.5 {Tags:["freeze"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[tag=freeze] align xz unless entity @s[dx=0,dz=0,dy=2] run tp @s[tag=inGame] ~.5 ~ ~.5
execute at @e[tag=freeze] run particle minecraft:dolphin ~ ~ ~ .2 0 .2 0 1 normal @s
# Ran from game:ingame/main

scoreboard players set @s power_up 0

execute if score @s power matches 20 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1.5
execute unless score @s power matches 20 run playsound minecraft:item.crossbow.quick_charge_2 master @s ~ ~ ~ 1 2

execute unless score @s power >= #xp power_max run xp add @s 73
execute unless score @s power >= @s power_max run scoreboard players add @s power 2

function game:ingame/power/actionbar

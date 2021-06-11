# Ran from game:ingame/main

scoreboard players set @s power_down 0

execute if score @s power matches 0 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1.5
execute unless score @s power matches 0 run playsound minecraft:item.crossbow.quick_charge_2 master @s ~ ~ ~ 1 2

execute if score @s power matches 2..20 run xp add @s -73
execute unless score @s power matches 0 run scoreboard players remove @s power 2

function game:ingame/power/actionbar

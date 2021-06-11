# Ran from game:lobby/main

execute if score #goal points matches 100 run scoreboard players set #goal points 249
execute if score #goal points matches 250 run scoreboard players set #goal points 499
execute if score #goal points matches 500 run scoreboard players set #goal points 999
execute if score #goal points matches 1000 run scoreboard players set #goal points 99
scoreboard players add #goal points 1

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"The ","color":"gray"},{"text":"Point Limit ","color":"red","bold":true},{"text":"is set to ","color":"gray"},{"score":{"name":"#goal","objective":"points"}}]
execute positioned 50 51 50 run playsound minecraft:entity.experience_orb.pickup master @a

clear @a minecraft:gold_nugget
clear @a minecraft:gold_ingot
clear @a minecraft:gold_block
clear @a minecraft:golden_carrot

# refresh options items
function game:lobby/options

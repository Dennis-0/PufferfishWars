# Ran from game:lobby/main

scoreboard players set wind game 1

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Wind ","color":"aqua","bold":true},{"text":"has been ","color":"gray"},{"text":"enabled","color":"green"}]
execute positioned 50 51 50 run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 2 1

clear @a minecraft:string

# refresh options items
function game:lobby/options

# Ran from game:lobby/main

scoreboard players set wind game 0

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Wind ","color":"aqua","bold":true},{"text":"has been ","color":"gray"},{"text":"disabled","color":"red"}]
execute positioned 50 51 50 run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 2 1

clear @a minecraft:feather

# refresh options items
function game:lobby/options

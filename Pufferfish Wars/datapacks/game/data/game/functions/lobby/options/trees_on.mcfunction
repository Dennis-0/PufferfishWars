# Ran from game:lobby/main

scoreboard players set trees game 1

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Trees ","color":"green","bold":true},{"text":"have been ","color":"gray"},{"text":"enabled","color":"green"}]
execute positioned 50 51 50 run playsound minecraft:block.grass.place master @a
particle block oak_leaves 50 52 50 .3 .3 .3 0 25 normal @a
particle block oak_log 50 52 50 .3 .3 .3 0 25 normal @a

clear @a minecraft:dark_oak_sapling

# refresh options items
function game:lobby/options

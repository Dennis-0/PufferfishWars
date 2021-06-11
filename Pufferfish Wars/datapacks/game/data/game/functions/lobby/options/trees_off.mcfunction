# Ran from game:lobby/main

scoreboard players set trees game 0

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Trees ","color":"green","bold":true},{"text":"have been ","color":"gray"},{"text":"disabled","color":"red"}]
execute positioned 50 51 50 run playsound minecraft:block.grass.break master @a
particle block oak_leaves 50 52 50 .3 .3 .3 0 25 normal @a
particle block oak_log 50 52 50 .3 .3 .3 0 25 normal @a

clear @a minecraft:oak_sapling

# refresh options items
function game:lobby/options

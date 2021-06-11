# Ran from game:lobby/main

tag @e[tag=terrain] remove selected
tag @e[tag=terrain,tag=mountain] add selected

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Terrain is set to ","color":"gray"},{"selector":"@e[tag=selected]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Mountain\n","bold":true,"color":"white"},{"text":"Height difference: High","bold":false,"color":"gray"}]}}]
execute positioned 50 51 50 run playsound minecraft:block.snow.break master @a
execute positioned 50 51 50 run playsound minecraft:block.wood.break master @a
particle block snow_block 50 52 50 .3 .3 .3 0 50 normal @a

clear @a minecraft:white_concrete_powder

# refresh options items
function game:lobby/options

function terrain:generate_start

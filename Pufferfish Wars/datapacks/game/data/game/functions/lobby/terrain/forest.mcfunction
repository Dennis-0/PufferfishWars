# Ran from game:lobby/main

tag @e[tag=terrain] remove selected
tag @e[tag=terrain,tag=forest] add selected 

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Terrain is set to ","color":"gray"},{"selector":"@e[tag=selected]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Forest\n","bold":true,"color":"dark_green"},{"text":"Height difference: Medium","bold":false,"color":"gray"}]}}]
execute positioned 50 51 50 run playsound minecraft:block.grass.break master @a
execute positioned 50 51 50 run playsound minecraft:block.wood.break master @a
particle block dirt 50 52 50 .3 .3 .3 0 50 normal @a

clear @a minecraft:green_concrete_powder

# refresh options items
function game:lobby/options

function terrain:generate_start

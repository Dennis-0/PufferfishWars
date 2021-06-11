# Ran from game:lobby/main

tag @e[tag=terrain] remove selected
tag @e[tag=terrain,tag=desert] add selected 

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Terrain is set to ","color":"gray"},{"selector":"@e[tag=selected]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Desert\n","bold":true,"color":"yellow"},{"text":"Height difference: Low","bold":false,"color":"gray"}]}}]
execute positioned 50 51 50 run playsound minecraft:block.sand.break master @a
execute positioned 50 51 50 run playsound minecraft:block.wool.break master @a
particle block sand 50 52 50 .3 .3 .3 0 50 normal @a

clear @a minecraft:sand

# refresh options items
function game:lobby/options

function terrain:generate_start

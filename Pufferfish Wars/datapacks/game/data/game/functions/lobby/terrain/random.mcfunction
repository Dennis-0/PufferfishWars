# Ran from game:lobby/main

tag @e[tag=terrain] remove selected
tag @e[tag=terrain,tag=random] add selected 

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Terrain is set to ","color":"gray"},{"selector":"@e[tag=selected]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Random\n","bold":true,"color":"blue"},{"text":"Random generation each round\n(Forest, Mountain, or Desert)","bold":false,"color":"gray"}]}}]
execute positioned 50 51 50 run playsound minecraft:block.stone.break master @a
particle block magenta_glazed_terracotta 50 52 50 .3 .3 .3 0 50 normal @a

clear @a minecraft:magenta_glazed_terracotta

# refresh options items
function game:lobby/options

function terrain:generate_start

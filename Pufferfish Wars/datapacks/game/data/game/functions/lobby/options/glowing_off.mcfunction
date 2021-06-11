# Ran from game:lobby/main

scoreboard players set glowing game 0

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Glowing ","color":"white","bold":true},{"text":"has been ","color":"gray"},{"text":"disabled","color":"red"}]
execute positioned 50 51 50 run playsound minecraft:block.bone_block.break master @a

clear @a minecraft:charcoal

# refresh options items
function game:lobby/options

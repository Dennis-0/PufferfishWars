# Ran from game:lobby/main

scoreboard players set glowing game 1

tellraw @a [{"text":" ⇒ ","color":"white"},{"text":"Glowing ","color":"white","bold":true},{"text":"has been ","color":"gray"},{"text":"enabled","color":"green"}]
execute positioned 50 51 50 run playsound minecraft:block.bone_block.place master @a
effect give @a minecraft:glowing 1 1 true

clear @a minecraft:coal

# refresh options items
function game:lobby/options

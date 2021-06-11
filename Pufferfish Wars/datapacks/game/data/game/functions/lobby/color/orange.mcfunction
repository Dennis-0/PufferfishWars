# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Orange] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Orange","color":"gold","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Orange] ~ ~ ~ 1 2

team join Orange @s

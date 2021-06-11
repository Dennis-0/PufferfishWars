# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Pink] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Pink","color":"light_purple","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Pink] ~ ~ ~ 1 2

team join Pink @s

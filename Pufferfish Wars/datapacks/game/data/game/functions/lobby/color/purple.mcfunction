# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Purple] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Purple","color":"dark_purple","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Purple] ~ ~ ~ 1 2

team join Purple @s

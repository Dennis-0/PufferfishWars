# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Green] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Green","color":"dark_green","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Green] ~ ~ ~ 1 2

team join Green @s

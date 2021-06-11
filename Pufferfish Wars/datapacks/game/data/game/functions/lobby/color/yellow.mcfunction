# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Yellow] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Yellow","color":"yellow","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Yellow] ~ ~ ~ 1 2

team join Yellow @s

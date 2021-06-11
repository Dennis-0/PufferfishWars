# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Red] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Red","color":"red","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Red] ~ ~ ~ 1 2

team join Red @s

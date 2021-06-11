# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Blue] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Blue","color":"blue","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Blue] ~ ~ ~ 1 2

team join Blue @s

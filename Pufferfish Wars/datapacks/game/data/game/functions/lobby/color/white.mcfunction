# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!White] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"White","color":"white","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!White] ~ ~ ~ 1 2

team join White @s

# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Aqua] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Aqua","color":"aqua","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Aqua] ~ ~ ~ 1 2

team join Aqua @s

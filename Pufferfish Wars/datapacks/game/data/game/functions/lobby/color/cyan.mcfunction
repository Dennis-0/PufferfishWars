# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Cyan] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Cyan","color":"dark_aqua","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Cyan] ~ ~ ~ 1 2

team join Cyan @s

# Ran from game:lobby/main

# refresh items in inventory
function game:lobby/give_items

tellraw @s[team=!Lime] [{"text":"▶ ","color":"white","italic":false},{"text":"You are now ","color":"gray"},{"text":"Lime","color":"green","bold":true}]
playsound minecraft:entity.puffer_fish.blow_up master @s[team=!Lime] ~ ~ ~ 1 2

team join Lime @s

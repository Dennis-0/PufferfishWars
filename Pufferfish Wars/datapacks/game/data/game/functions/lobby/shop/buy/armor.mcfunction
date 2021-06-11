# Ran from game:lobby/shop/check/

scoreboard players add @s buy_armor 1
scoreboard players operation @s money -= #cost buy_armor

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Armor","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Armor\n","bold":true,"color":"blue"},{"text":"Increase your armor protection by 1 🛡","bold":false,"color":"white"}]}},{"text":" (+","color":"gray","bold":false,"italic":true},{"text":"🛡","color":"gray","bold":false,"italic":false},{"text":")","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @s ~ ~ ~ 2 2
playsound minecraft:item.crop.plant master @s

# refresh items in inventory
function game:lobby/give_items

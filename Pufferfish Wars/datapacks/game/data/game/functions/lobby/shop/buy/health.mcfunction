# Ran from game:lobby/shop/check/

scoreboard players add @s buy_health 1
scoreboard players operation @s money -= #cost buy_health

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Health","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Health\n","bold":true,"color":"red"},{"text":"Increase your maximum health by 1 ❤","bold":false,"color":"white"}]}},{"text":" (+","color":"gray","bold":false,"italic":true},{"text":"❤","color":"gray","bold":false,"italic":false},{"text":")","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @s ~ ~ ~ 2 2
playsound minecraft:item.crop.plant master @s

# refresh items in inventory
function game:lobby/give_items

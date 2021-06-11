# Ran from game:lobby/shop/check/

scoreboard players add @s buy_power 1
scoreboard players add @s power_max 2
scoreboard players operation @s money -= #cost buy_power

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Power","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Power\n","bold":true,"color":"yellow"},{"text":"Increase your maximum power by 10%","bold":false,"color":"white"}]}},{"text":" (+10%)","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 2 2
playsound minecraft:item.crossbow.quick_charge_1 master @s

# refresh items in inventory
function game:lobby/give_items

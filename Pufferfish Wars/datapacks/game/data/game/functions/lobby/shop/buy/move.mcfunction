# Ran from game:lobby/shop/check/

scoreboard players add @s buy_move 1
scoreboard players add @s move_max 100
scoreboard players operation @s money -= #cost buy_move

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"More Movement","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"More Movement\n","bold":true,"color":"dark_green"},{"text":"Increase your maximum travel distance per turn by 10%","bold":false,"color":"white"}]}},{"text":" (+10%)","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @s ~ ~ ~ 2 2
playsound minecraft:item.armor.equip_generic master @s

# refresh items in inventory
function game:lobby/give_items

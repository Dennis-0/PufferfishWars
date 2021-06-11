# Ran from game:lobby/shop/check/

scoreboard players add @s buy_jump 1
scoreboard players operation @s money -= #cost buy_jump

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Jump Boost","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Jump Boost\n","bold":true,"color":"aqua"},{"text":"Increase your jump height by 1 block","bold":false,"color":"white"}]}},{"text":" (+1 Block)","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 2 2
playsound minecraft:item.bottle.empty master @s

# refresh items in inventory
function game:lobby/give_items

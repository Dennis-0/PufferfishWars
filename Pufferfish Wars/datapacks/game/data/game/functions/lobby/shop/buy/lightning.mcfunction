# Ran from game:lobby/shop/check/

scoreboard players add @s lightning 1
scoreboard players operation @s money -= #cost lightning

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Lightning","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Lightning\n","bold":true,"color":"yellow"},{"text":"Shoot a pufferfish that\nsummons a powerful\nlightning bolt on explosion","bold":false,"color":"white"}]}},{"text":" (+1 shot)","color":"gray","bold":false,"italic":true}]

playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 2 2
playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~ ~ 2 1

# refresh items in inventory
function game:lobby/give_items

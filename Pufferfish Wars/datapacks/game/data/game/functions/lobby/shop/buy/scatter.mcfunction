# Ran from game:lobby/shop/check/

scoreboard players add @s scatter 1
scoreboard players operation @s money -= #cost scatter

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Scatter","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Scatter\n","bold":true,"color":"red"},{"text":"Shoot a pufferfish that\nexplodes on impact with\na player, or shortly after\ntouching the ground,\nthat scatters a couple\npufferfishes in any\ndirection on explosion","bold":false,"color":"white"}]}},{"text":" (+1 shot)","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 2 2
playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~ ~ 2 1

# refresh items in inventory
function game:lobby/give_items

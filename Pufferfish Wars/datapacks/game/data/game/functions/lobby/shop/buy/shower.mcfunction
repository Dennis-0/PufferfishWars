# Ran from game:lobby/shop/check/

scoreboard players add @s shower 3
scoreboard players operation @s money -= #cost shower

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Shower","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Shower\n","bold":true,"color":"blue"},{"text":"Shoot a pufferfish that\nsplits mid-air, to shower\ndown on your opponents","bold":false,"color":"white"}]}},{"text":" (+1 shot)","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 2 2
playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~ ~ 2 1

# refresh items in inventory
function game:lobby/give_items

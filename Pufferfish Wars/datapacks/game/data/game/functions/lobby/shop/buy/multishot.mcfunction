# Ran from game:lobby/shop/check/

scoreboard players add @s multishot 3
scoreboard players operation @s money -= #cost multishot

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Multishot","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Multishot\n","bold":true,"color":"gold"},{"text":"Shoot 3 pufferfishes that\nexplode on impact with\na player, or shortly after\ntouching the ground","bold":false,"color":"white"}]}},{"text":" (+3 shots)","color":"gray","bold":false,"italic":true}]
playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 2 2
playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~ ~ 2 1

# refresh items in inventory
function game:lobby/give_items

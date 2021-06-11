# Ran from game:lobby/shop/check/

tag @s add elytra
scoreboard players operation @s money -= #cost buy_elytra

tellraw @a [{"selector":"@s"},{"text":" purchased ","color":"gray"},{"text":"Elytra","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Elytra\n","bold":true,"color":"light_purple"},{"text":"For escaping high places,\nflying does not add to your travel distance","bold":false,"color":"white"}]}}]
playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 2 2
playsound minecraft:item.armor.equip_turtle master @s

# refresh items in inventory
function game:lobby/give_items

item replace entity @s armor.chest with minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1,Unbreakable:1b}

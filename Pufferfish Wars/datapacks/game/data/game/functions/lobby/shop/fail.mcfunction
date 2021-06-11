# Ran from game:lobby/shop/check/

tellraw @s [{"text":"[!] ","color":"white"},{"text":"You do not have enough money to buy this item","color":"red"}]
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 2

# refresh items in inventory
function game:lobby/give_items

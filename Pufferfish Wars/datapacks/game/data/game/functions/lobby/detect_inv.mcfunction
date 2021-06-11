# inventory update checks

#colors
execute unless data entity @s Inventory[{Slot:9b,tag:{Red:1b}}] at @s run function game:lobby/color/red
execute unless data entity @s Inventory[{Slot:10b,tag:{Orange:1b}}] at @s run function game:lobby/color/orange
execute unless data entity @s Inventory[{Slot:11b,tag:{Yellow:1b}}] at @s run function game:lobby/color/yellow
execute unless data entity @s Inventory[{Slot:12b,tag:{Lime:1b}}] at @s run function game:lobby/color/lime
execute unless data entity @s Inventory[{Slot:21b,tag:{Green:1b}}] at @s run function game:lobby/color/green
execute unless data entity @s Inventory[{Slot:30b,tag:{Cyan:1b}}] at @s run function game:lobby/color/cyan
execute unless data entity @s Inventory[{Slot:29b,tag:{Aqua:1b}}] at @s run function game:lobby/color/aqua
execute unless data entity @s Inventory[{Slot:28b,tag:{Blue:1b}}] at @s run function game:lobby/color/blue
execute unless data entity @s Inventory[{Slot:27b,tag:{Purple:1b}}] at @s run function game:lobby/color/purple
execute unless data entity @s Inventory[{Slot:18b,tag:{Pink:1b}}] at @s run function game:lobby/color/pink
execute unless data entity @s Inventory[{Slot:19b,tag:{White:1b}}] at @s run function game:lobby/give_items
execute unless data entity @s Inventory[{Slot:20b,tag:{White:1b}}] at @s run function game:lobby/give_items

#shop
execute unless data entity @s Inventory[{Slot:25b,tag:{Info:1b}}] run function game:lobby/give_items
execute unless data entity @s Inventory[{Slot:14b,tag:{Multishot:1b}}] at @s run function game:lobby/shop/check/multishot
execute unless data entity @s Inventory[{Slot:15b,tag:{Scatter:1b}}] at @s run function game:lobby/shop/check/scatter
execute unless data entity @s Inventory[{Slot:16b,tag:{Lightning:1b}}] at @s run function game:lobby/shop/check/lightning
execute unless data entity @s Inventory[{Slot:17b,tag:{Shower:1b}}] at @s run function game:lobby/shop/check/shower
execute unless data entity @s Inventory[{Slot:26b,tag:{Elytra:1b}}] at @s if entity @s[tag=!elytra] run function game:lobby/shop/check/elytra
execute unless data entity @s Inventory[{Slot:33b,tag:{Health:1b}}] at @s unless score @s buy_health matches 10.. run function game:lobby/shop/check/health
execute unless data entity @s Inventory[{Slot:35b,tag:{Power:1b}}] at @s unless score @s buy_power matches 10.. run function game:lobby/shop/check/power
execute unless data entity @s Inventory[{Slot:23b,tag:{Armor:1b}}] at @s unless score @s buy_armor matches 5.. run function game:lobby/shop/check/armor
execute unless data entity @s Inventory[{Slot:34b,tag:{Jump:1b}}] at @s unless score @s buy_jump matches 2.. run function game:lobby/shop/check/jump
execute unless data entity @s Inventory[{Slot:32b,tag:{Move:1b}}] at @s unless score @s buy_move matches 10.. run function game:lobby/shop/check/move

# inventory update checks

#crossbows
execute unless data entity @s Inventory[{Slot:0b,tag:{Standard:1b}}] at @s run function game:ingame/give_items
execute unless data entity @s[scores={multishot=1..}] Inventory[{Slot:1b,tag:{Multishot:1b}}] at @s run function game:ingame/give_items
execute unless data entity @s[scores={scatter=1..}] Inventory[{Slot:2b,tag:{Scatter:1b}}] at @s run function game:ingame/give_items
execute unless data entity @s[scores={lightning=1..}] Inventory[{Slot:3b,tag:{Lightning:1b}}] at @s run function game:ingame/give_items
execute unless data entity @s[scores={shower=1..}] Inventory[{Slot:4b,tag:{Shower:1b}}] at @s run function game:ingame/give_items

#other
execute if score wind game matches 1 unless data entity @s Inventory[{Slot:5b,tag:{Wind:1b}}] at @s run function game:ingame/give_items
execute unless data entity @s[scores={chorus=0}] Inventory[{Slot:6b,tag:{Chorus:1b}}] at @s run function game:ingame/give_items
execute unless data entity @s Inventory[{Slot:7b,tag:{Power:0b}}] at @s run function game:ingame/give_items
execute unless data entity @s Inventory[{Slot:8b,tag:{Power:1b}}] at @s run function game:ingame/give_items

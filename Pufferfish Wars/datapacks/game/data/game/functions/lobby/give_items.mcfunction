# Ran from game:main

clear @s

# colors
replaceitem entity @s inventory.0 minecraft:red_stained_glass_pane{Red:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Red","color":"red","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.1 minecraft:orange_stained_glass_pane{Orange:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Orange","color":"gold","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.2 minecraft:yellow_stained_glass_pane{Yellow:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Yellow","color":"yellow","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.3 minecraft:lime_stained_glass_pane{Lime:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Lime","color":"green","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.12 minecraft:green_stained_glass_pane{Green:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Green","color":"dark_green","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.21 minecraft:cyan_stained_glass_pane{Cyan:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Cyan","color":"dark_aqua","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.20 minecraft:light_blue_stained_glass_pane{Aqua:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Aqua","color":"aqua","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.19 minecraft:blue_stained_glass_pane{Blue:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Blue","color":"blue","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.18 minecraft:purple_stained_glass_pane{Purple:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Purple","color":"dark_purple","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.9 minecraft:pink_stained_glass_pane{Pink:1b,display:{Name:'[{"text":"▶ ","color":"white","italic":false},{"text":"Join ","color":"gray","bold":false,"italic":false},{"text":"Pink","color":"light_purple","bold":true,"italic":false}]'}}
replaceitem entity @s inventory.10 minecraft:white_stained_glass_pane{White:1b,display:{Name:'[{"text":"Colors are purely visual,","color":"dark_gray"}]',Lore:['{"text":"players with the same color","color":"dark_gray"}','{"text":"are not on the same team","color":"dark_gray"}']}}
replaceitem entity @s inventory.11 minecraft:white_stained_glass_pane{White:1b,display:{Name:'[{"text":"Colors are purely visual,","color":"dark_gray"}]',Lore:['{"text":"players with the same color","color":"dark_gray"}','{"text":"are not on the same team","color":"dark_gray"}']}}

# shop
loot replace entity @s inventory.15 loot game:shop/info
loot replace entity @s inventory.16 loot game:shop/info
loot replace entity @s inventory.5 loot game:crossbows/multishot
loot replace entity @s inventory.6 loot game:crossbows/scatter
loot replace entity @s inventory.7 loot game:crossbows/lightning
loot replace entity @s inventory.8 loot game:crossbows/shower
loot replace entity @s[tag=!elytra] inventory.17 loot game:shop/elytra
execute unless score @s buy_health matches 10.. run loot replace entity @s inventory.24 loot game:shop/health
execute unless score @s buy_power matches 10.. run loot replace entity @s inventory.26 loot game:shop/power
execute unless score @s buy_jump matches 2.. run loot replace entity @s inventory.25 loot game:shop/jump

execute if score @s buy_armor matches 0 run loot replace entity @s inventory.14 loot game:shop/armor1
execute if score @s buy_armor matches 1 run loot replace entity @s inventory.14 loot game:shop/armor2
execute if score @s buy_armor matches 2 run loot replace entity @s inventory.14 loot game:shop/armor3
execute if score @s buy_armor matches 3 run loot replace entity @s inventory.14 loot game:shop/armor4
execute if score @s buy_armor matches 4 run loot replace entity @s inventory.14 loot game:shop/armor5

execute if score @s buy_move matches 0..1 run loot replace entity @s inventory.23 loot game:shop/move1
execute if score @s buy_move matches 2..3 run loot replace entity @s inventory.23 loot game:shop/move2
execute if score @s buy_move matches 4..5 run loot replace entity @s inventory.23 loot game:shop/move3
execute if score @s buy_move matches 6..7 run loot replace entity @s inventory.23 loot game:shop/move4
execute if score @s buy_move matches 8..9 run loot replace entity @s inventory.23 loot game:shop/move5

# elytra
replaceitem entity @s[tag=elytra] armor.chest minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1,Unbreakable:1b}

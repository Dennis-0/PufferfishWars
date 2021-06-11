# Ran from game:ingame/start_turn

clear @s

# crossbows
loot replace entity @s hotbar.0 loot game:crossbows/standard
loot replace entity @s[scores={multishot=1..}] hotbar.1 loot game:crossbows/multishot
loot replace entity @s[scores={scatter=1..}] hotbar.2 loot game:crossbows/scatter
loot replace entity @s[scores={lightning=1..}] hotbar.3 loot game:crossbows/lightning
loot replace entity @s[scores={shower=1..}] hotbar.4 loot game:crossbows/shower

# wind direction
execute if score wind game matches 1 run loot replace entity @s hotbar.5 loot game:wind

# chorus/power
item replace entity @s[scores={chorus=0}] hotbar.6 with minecraft:chorus_fruit{GameItem:1b,Chorus:1b,display:{Name:'[{"text":"Emergency Escape","color":"dark_purple","bold":true,"italic":false}]'}}
item replace entity @s hotbar.7 with minecraft:warped_fungus_on_a_stick{GameItem:1b,Power:0b,display:{Name:'[{"text":"▽ ","color":"white","bold":true,"italic":false},{"text":"Decrease Power ","color":"yellow","bold":true,"italic":false},{"text":"▽ ","color":"white","bold":true},{"text":"[Right Click]","color":"gray","bold":false}]'}}
item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{GameItem:1b,Power:1b,display:{Name:'[{"text":"△ ","color":"white","bold":true,"italic":false},{"text":"Increase Power ","color":"yellow","bold":true,"italic":false},{"text":"△ ","color":"white","bold":true},{"text":"[Right Click]","color":"gray","bold":false}]'}}

# armor
item replace entity @a[tag=inGame,scores={buy_armor=1}] armor.chest with minecraft:leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
item replace entity @a[tag=inGame,scores={buy_armor=2}] armor.chest with minecraft:iron_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
item replace entity @a[tag=inGame,scores={buy_armor=3}] armor.chest with minecraft:golden_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
item replace entity @a[tag=inGame,scores={buy_armor=4}] armor.chest with minecraft:diamond_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
item replace entity @a[tag=inGame,scores={buy_armor=5}] armor.chest with minecraft:netherite_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}

# cover inventory texture
item replace entity @a[tag=inGame] armor.feet with minecraft:chainmail_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,display:{Name:'[{"text":""}]'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}

# elytra
item replace entity @s[tag=elytra] armor.chest with minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b}

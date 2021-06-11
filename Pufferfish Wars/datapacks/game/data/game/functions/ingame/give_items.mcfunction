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
replaceitem entity @s[scores={chorus=0}] hotbar.6 minecraft:chorus_fruit{GameItem:1b,Chorus:1b,display:{Name:'[{"text":"Emergency Escape","color":"dark_purple","bold":true,"italic":false}]'}}
replaceitem entity @s hotbar.7 minecraft:warped_fungus_on_a_stick{GameItem:1b,Power:0b,display:{Name:'[{"text":"▽ ","color":"white","bold":true,"italic":false},{"text":"Decrease Power ","color":"yellow","bold":true,"italic":false},{"text":"▽ ","color":"white","bold":true},{"text":"[Right Click]","color":"gray","bold":false}]'}}
replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{GameItem:1b,Power:1b,display:{Name:'[{"text":"△ ","color":"white","bold":true,"italic":false},{"text":"Increase Power ","color":"yellow","bold":true,"italic":false},{"text":"△ ","color":"white","bold":true},{"text":"[Right Click]","color":"gray","bold":false}]'}}

# armor
replaceitem entity @a[tag=inGame,scores={buy_armor=1}] armor.chest minecraft:leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
replaceitem entity @a[tag=inGame,scores={buy_armor=2}] armor.chest minecraft:iron_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
replaceitem entity @a[tag=inGame,scores={buy_armor=3}] armor.chest minecraft:golden_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
replaceitem entity @a[tag=inGame,scores={buy_armor=4}] armor.chest minecraft:diamond_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}
replaceitem entity @a[tag=inGame,scores={buy_armor=5}] armor.chest minecraft:netherite_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}

# cover inventory texture
replaceitem entity @a[tag=inGame] armor.feet minecraft:chainmail_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,display:{Name:'[{"text":""}]'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}

# elytra
replaceitem entity @s[tag=elytra] armor.chest minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b}

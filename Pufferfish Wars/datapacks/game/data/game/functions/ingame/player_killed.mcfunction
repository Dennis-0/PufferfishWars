tag @s add killed

# 0 health for point calculation
scoreboard players set @s health_end 0

# award points to killer
execute unless entity @s[tag=turn] run scoreboard players add @s damage 20
execute if entity @s[tag=turn] run scoreboard players remove @s damage 20

scoreboard players reset @s death
clear @s
function game:lobby/reset_player
item replace entity @s armor.feet with minecraft:chainmail_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,display:{Name:'[{"text":""}]'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1035045422,1006519623,1022738096,1834137150]}]}

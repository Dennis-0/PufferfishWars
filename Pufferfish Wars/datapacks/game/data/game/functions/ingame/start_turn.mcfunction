# Ran from game:ingame/find_next

scoreboard players set #turn_active game 1

# reset movement scores
scoreboard players set @s move_add 0
scoreboard players set @s move_total 0
scoreboard players set @s walk 0
scoreboard players set @s run 0
scoreboard players set @s crouch 0
scoreboard players set @s fly 0
scoreboard players set @s jump 0
scoreboard players set @s jump_temp 0

# show movement bossbar
bossbar set move players @s

# reset timer
scoreboard players set time_out game 600

# apply effects
effect clear @s minecraft:slowness
effect clear @s minecraft:jump_boost
effect give @s[scores={buy_jump=1}] minecraft:jump_boost 100000 0 true
effect give @s[scores={buy_jump=2}] minecraft:jump_boost 100000 1 true

# get health value
#execute as @a store result score @s health run data get entity @s Health
#execute as @a[scores={health=0}] run scoreboard players set @s health 20
execute as @a run scoreboard players operation @s health_start = @s health

# inventory
clear @a
function game:ingame/give_items

# indicators
execute at @s run playsound minecraft:item.crossbow.quick_charge_1 master @s ~ ~ ~ 2 2
execute at @s run playsound minecraft:block.note_block.chime master @s

tellraw @a [{"text":"▶ ","color":"white"},{"selector":"@s"},{"text":"'s turn","color":"white"}]

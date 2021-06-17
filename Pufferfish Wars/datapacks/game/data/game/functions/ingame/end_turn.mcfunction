# Ran from game:ingame/main
item replace entity @a armor.feet with minecraft:chainmail_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7,Unbreakable:1b,display:{Name:'[{"text":""}]'}}
kill @e[tag=freeze]

title @a clear

# points update
execute as @a run scoreboard players operation @s damage = @s health_start
execute as @a[tag=inGame,tag=!killed] run scoreboard players operation @s health_end = @s health
execute as @a run scoreboard players operation @s damage -= @s health_end

scoreboard players operation @p[tag=turn] points += @a[tag=!turn] damage
scoreboard players operation @p[tag=turn] money += @a[tag=!turn] damage
scoreboard players operation @p[tag=turn] points -= @a[tag=turn] damage

execute as @a[tag=inGame,tag=!turn,scores={damage=1..}] run tellraw @a [{"selector":"@p[tag=turn]"},{"text":" hit ","color":"gray"},{"selector":"@s"},{"text":" and gained ","color":"gray"},{"score":{"name":"@s","objective":"damage"}},{"text":" points!","color":"gray"}]
execute as @p[tag=inGame,tag=turn,scores={damage=1..}] run tellraw @a [{"selector":"@p[tag=turn]"},{"text":" hit themselves and lost ","color":"gray"},{"score":{"name":"@s","objective":"damage"}},{"text":" points!","color":"gray"}]

tag @a[tag=killed] remove inGame
tag @a remove killed
execute store result score players_left game if entity @a[tag=inGame]

scoreboard players set @a damage 0

scoreboard players set #turn_active game 0

tag @a remove turn
tag @a remove cb_used

scoreboard players reset #timer shower

execute unless score players_left game matches ..1 run schedule function game:ingame/find_next 1t

execute if score players_left game matches ..1 run function game:end

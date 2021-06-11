# Ran from game:lobby/start/success

execute if score #start_cancel game matches 0 run scoreboard players remove #countdown game 1
execute if score #start_cancel game matches 0 run title @a title [{"text":"Starting in ","color":"yellow","bold":true},{"score":{"name":"#countdown","objective":"game"},"bold":true},{"text":"..."}]
execute if score #start_cancel game matches 0 as @a at @s run playsound minecraft:block.note_block.bell master @s

execute if score #start_cancel game matches 0 if score #countdown game matches 1.. run schedule function game:lobby/start/countdown 1s
execute if score #countdown game matches ..0 unless entity @e[tag=scanner] run scoreboard players set #start game 1

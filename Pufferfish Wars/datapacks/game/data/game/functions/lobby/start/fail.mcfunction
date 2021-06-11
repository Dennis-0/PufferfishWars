# Ran from game:lobby/start/check

execute as @a at @s run playsound minecraft:entity.puffer_fish.sting master @s

tellraw @a [{"text":"[!] ","color":"white"},{"text":"At least 2 players are required to start the game! ","color":"red"}]
#tellraw @a [{"text":""}]

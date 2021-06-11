# Ran from game:lobby/start/check

scoreboard players reset @a start_cancel

scoreboard players set #start_cancel game 1
scoreboard players set #cancel game 0
scoreboard players reset #countdown game
playsound minecraft:block.anvil.land master @a
title @a clear

tellraw @a [{"selector":"@s"},{"text":" cancelled the countdown ","color":"red"}]
tellraw @a [{"text":""}]

execute as @a at @s run playsound minecraft:block.anvil.land master @s

data modify block 50 51 50 Lock set value ""

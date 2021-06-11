# Ran from game:lobby/start/check

scoreboard players set #start_cancel game 0
scoreboard players set #countdown game 6
title @a times 0 30 0
function game:lobby/start/countdown

tellraw @a [{"text":"▶ The next round is starting!","color":"white"},{"text":" [Cancel]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger start_cancel"}}]

scoreboard players enable @a start_cancel

setblock 50 51 50 dispenser[facing=up]{Lock:"LOCKED",CustomName:'{"text":"Options","bold":false,"color":"black"}'} destroy
setblock 51 51 50 minecraft:warped_wall_sign[facing=east]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:lobby/credits"}}',Text2:'{"text":"Credits","bold":true,"color":"white"}',Text3:'{"text":"(right click)","italic":true,"color":"gray"}'}
setblock 49 51 50 minecraft:warped_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tp @s 50 250 50"}}',Text2:'{"text":"Tutorial","bold":true,"color":"white"}',Text3:'{"text":"(right click)","italic":true,"color":"gray"}'}

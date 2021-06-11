# Ran from game:lobby/end

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s

tellraw @a [{"text":""}]
tellraw @a [{"selector":"@s","bold":true},{"text":" won the game!","color":"white","bold":true}]
tellraw @a [{"text":""}]

title @a times 10 90 10
title @a title [{"selector":"@s","bold":true},{"text":" won the game!","color":"white"}]

tellraw @a {"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","strikethrough":true,"bold":true}

scoreboard players set #number player_order 1
scoreboard players reset @a player_order
schedule function game:lobby/final_scores 1t

#execute as @a run schedule function game:reset 5s
scoreboard players set #end game 1

function game:lobby/options
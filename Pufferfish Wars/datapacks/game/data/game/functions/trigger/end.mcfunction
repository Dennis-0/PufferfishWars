# Ran from lobby

scoreboard players reset @s end_round
scoreboard players enable @a end_round
scoreboard players enable @a end_confirm
scoreboard players enable @a end_cancel

tellraw @a [{"text":""}]
tellraw @a [{"selector":"@s"},{"text":" wants to end the current round!","color":"white"}]
tellraw @a [{"text":"▶ ","color":"white"},{"text":"Are you sure you want to do this?","color":"#ccccccc"},{"text":" [Yes]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger end_confirm"}},{"text":" [No]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger end_cancel"}}]

playsound minecraft:block.note_block.cow_bell master @a
playsound minecraft:ui.toast.in master @a ~ ~ ~ 2 1

# Ran from /trigger reset_game

scoreboard players reset @a reset_game
scoreboard players enable @a reset_game
scoreboard players enable @a reset_confirm
scoreboard players enable @a reset_cancel

tellraw @a [{"text":""}]
tellraw @a [{"selector":"@s"},{"text":" wants to reset the game!","color":"white"}]
tellraw @a [{"text":"▶ ","color":"white"},{"text":"Are you sure you want to completely reset the game and all player scores?","color":"#cccccc"},{"text":" [Yes]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger reset_confirm"}},{"text":" [No]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger reset_cancel"}}]

playsound minecraft:block.note_block.cow_bell master @a
playsound minecraft:ui.toast.in master @a ~ ~ ~ 2 1

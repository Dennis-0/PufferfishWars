scoreboard players set @s move_add 0
scoreboard players operation @s jump_temp = @s jump

scoreboard players operation @s move_add += @s walk
scoreboard players operation @s move_add += @s run
scoreboard players operation @s move_add += @s crouch
scoreboard players operation @s jump_temp *= #multiplier jump
scoreboard players operation @s move_add += @s jump_temp

scoreboard players operation @s move_total = @s move_add

execute if score @s[tag=!cb_used] move_total > @s move_max run function game:ingame/freeze

scoreboard players operation #percent move_total = @s move_max
scoreboard players operation #percent move_total -= @s move_total
scoreboard players operation #percent move_total *= #multiplier jump
scoreboard players operation #percent move_total /= @s move_max
execute store result bossbar move value run scoreboard players get #percent move_total

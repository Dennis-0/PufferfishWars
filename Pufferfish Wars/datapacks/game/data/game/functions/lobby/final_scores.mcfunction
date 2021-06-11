# Ran from game:winner

execute if score #number player_order matches 1 run tellraw @a [{"text":"Final Scores:","bold":true}]

# find player with most points out of the non-ranked players at this point
scoreboard players reset #max_points points
scoreboard players operation #max_points points > @a[tag=!ranked] points
execute as @a[tag=!ranked] if score @s points = #max_points points run tag @s add being_ranked
tag @a[tag=being_ranked,sort=random,limit=1] add chosen
scoreboard players operation @a[tag=chosen] player_order = #number player_order

# display final scores
tellraw @a [{"score":{"name":"#number","objective":"player_order"}},{"text":". "},{"selector":"@a[tag=chosen]"},{"text":" - ","color":"gray"},{"score":{"name":"#max_points","objective":"points"}},{"text":" points "}]

scoreboard players add #number player_order 1
tag @a[scores={player_order=0..}] add ranked
tag @a[tag=ranked] remove being_ranked
tag @a remove chosen

# repeat for next player in order
execute if entity @a[tag=!ranked] run schedule function game:lobby/final_scores 1t
execute unless entity @a[tag=!ranked] run tellraw @a {"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","strikethrough":true,"bold":true}

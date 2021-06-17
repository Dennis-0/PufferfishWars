# Ran from game:lobby/start

# find player with most points out of the non-ranked players at this point
scoreboard players reset #max_points points
scoreboard players operation #max_points points > @a[tag=!ranked,tag=inGame] points
execute as @a[tag=!ranked,tag=inGame] if score @s points = #max_points points run tag @s add being_ranked
tag @a[tag=being_ranked,sort=random,limit=1] add chosen
scoreboard players operation @a[tag=chosen] player_order = #number player_order
scoreboard players remove #number player_order 1

tag @a[scores={player_order=0..}] add ranked
tag @a[tag=ranked] remove being_ranked
tag @a remove chosen

# repeat for next player in order
execute if entity @a[tag=!ranked,tag=inGame] run schedule function game:lobby/player_order 1t

# start game after every player has a player order
execute if score state game matches 1 unless entity @a[tag=!ranked,tag=inGame] run schedule function game:ingame/find_next 1t

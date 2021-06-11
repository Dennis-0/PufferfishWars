advancement revoke @s only game:shoot

tag @e[type=minecraft:arrow] add shoot
playsound minecraft:entity.puffer_fish.flop player @a ~ ~ ~ 2 1
schedule function game:ingame/projectile/delay 2t

summon minecraft:pufferfish ~.1 ~ ~ {Invulnerable:1b,DeathTime:19s,Glowing:1b}
summon minecraft:pufferfish ~-.3 ~ ~ {Invulnerable:1b,DeathTime:19s,Glowing:1b}
summon minecraft:pufferfish ~ ~ ~.2 {Invulnerable:1b,DeathTime:19s,Glowing:1b}
summon minecraft:pufferfish ~ ~ ~-.4 {Invulnerable:1b,DeathTime:19s,Glowing:1b}

execute as @e[type=pufferfish,tag=!shower] run data modify entity @s Motion set from entity @e[type=pufferfish,tag=shower,sort=nearest,limit=1] Motion

execute as @e[type=pufferfish,team=] run function game:ingame/projectile/color

execute if entity @s[tag=scatter] run function game:ingame/projectile/scatter/spawn
execute if entity @s[tag=lightning] run function game:ingame/projectile/lightning

execute if entity @s[tag=!scattered,tag=!lightning] run summon tnt ~ ~ ~
execute if entity @s[tag=scattered] run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Fuse:0,DeathTime:19s,CustomName:'{"text":"Pufferfish"}'}
execute if entity @s[tag=lightning] run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:5,Fuse:0,DeathTime:19s,CustomName:'{"text":"Pufferfish"}'}

execute as @e[type=creeper,team=] run function game:ingame/projectile/color
kill @s

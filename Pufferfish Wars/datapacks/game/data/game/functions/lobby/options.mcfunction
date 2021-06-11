# Ran from game:init, other places

execute unless block 50 51 50 dispenser run setblock 50 51 50 dispenser[facing=up]{CustomName:'{"text":"Options"}'}

replaceitem block 50 51 50 container.4 minecraft:pufferfish{display:{Name:'[{"text":"Start Game","color":"gold","bold":true,"italic":false}]'}}
execute if entity @p[scores={points=1..}] run replaceitem block 50 51 50 container.4 minecraft:pufferfish{display:{Name:'[{"text":"Next Round","color":"gold","bold":true,"italic":false}]'}}
execute if score #end game matches 1 run replaceitem block 50 51 50 container.4 minecraft:pufferfish{display:{Name:'[{"text":"Start New Game","color":"gold","bold":true,"italic":false}]',Lore:['{"text":"this will reset","color":"dark_gray","italic":false}','{"text":"the previous game","color":"dark_gray","italic":false}']}}


loot replace block 50 51 50 container.0 loot game:options/forest
loot replace block 50 51 50 container.1 loot game:options/mountain
loot replace block 50 51 50 container.2 loot game:options/desert
loot replace block 50 51 50 container.3 loot game:options/random

execute if score #goal points matches 100 run loot replace block 50 51 50 container.5 loot game:options/points1
execute if score #goal points matches 250 run loot replace block 50 51 50 container.5 loot game:options/points2
execute if score #goal points matches 500 run loot replace block 50 51 50 container.5 loot game:options/points3
execute if score #goal points matches 1000 run loot replace block 50 51 50 container.5 loot game:options/points4

execute if score trees game matches 1 run loot replace block 50 51 50 container.6 loot game:options/trees_on
execute if score trees game matches 0 run loot replace block 50 51 50 container.6 loot game:options/trees_off

execute if score wind game matches 1 run loot replace block 50 51 50 container.7 loot game:options/wind_on
execute if score wind game matches 0 run loot replace block 50 51 50 container.7 loot game:options/wind_off

execute if score glowing game matches 1 run loot replace block 50 51 50 container.8 loot game:options/glowing_on
execute if score glowing game matches 0 run loot replace block 50 51 50 container.8 loot game:options/glowing_off

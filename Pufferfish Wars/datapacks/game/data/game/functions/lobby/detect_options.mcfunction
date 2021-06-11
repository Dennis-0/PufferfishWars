# options update checks

#terrain
execute unless data block 50 51 50 Items[{Slot:0b}] run function game:lobby/terrain/forest
execute unless data block 50 51 50 Items[{Slot:1b}] run function game:lobby/terrain/mountain
execute unless data block 50 51 50 Items[{Slot:2b}] run function game:lobby/terrain/desert
execute unless data block 50 51 50 Items[{Slot:3b}] run function game:lobby/terrain/random

#start
execute unless data block 50 51 50 Items[{Slot:4b}] run function game:lobby/options/start

#points
execute unless data block 50 51 50 Items[{Slot:5b}] run function game:lobby/options/points

#options
execute unless data block 50 51 50 Items[{Slot:6b}] if score trees game matches 1 run function game:lobby/options/trees_off
execute unless data block 50 51 50 Items[{Slot:6b}] if score trees game matches 0 run function game:lobby/options/trees_on

execute unless data block 50 51 50 Items[{Slot:7b}] if score wind game matches 1 run function game:lobby/options/wind_off
execute unless data block 50 51 50 Items[{Slot:7b}] if score wind game matches 0 run function game:lobby/options/wind_on

execute unless data block 50 51 50 Items[{Slot:8b}] if score glowing game matches 1 run function game:lobby/options/glowing_off
execute unless data block 50 51 50 Items[{Slot:8b}] if score glowing game matches 0 run function game:lobby/options/glowing_on

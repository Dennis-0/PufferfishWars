execute as @e[type=minecraft:arrow] at @s run function game:ingame/projectile/switch_arrow

execute as @p[tag=turn,nbt={SelectedItem:{tag:{Multishot:1b}}}] run scoreboard players remove @s multishot 1
execute as @p[tag=turn,nbt={SelectedItem:{tag:{Scatter:1b}}}] run scoreboard players remove @s scatter 1
execute as @p[tag=turn,nbt={SelectedItem:{tag:{Lightning:1b}}}] run scoreboard players remove @s lightning 1
execute as @p[tag=turn,nbt={SelectedItem:{tag:{Shower:1b}}}] run scoreboard players remove @s shower 1

execute as @p[tag=turn,nbt={SelectedItem:{tag:{Scatter:1b}}}] run tag @e[type=pufferfish] add scatter
execute as @p[tag=turn,nbt={SelectedItem:{tag:{Lightning:1b}}}] run tag @e[type=pufferfish] add lightning
execute as @p[tag=turn,nbt={SelectedItem:{tag:{Shower:1b}}}] run tag @e[type=pufferfish] add shower

tag @a[tag=turn] add cb_used
clear @p[tag=turn]
kill @e[tag=freeze]

function game:ingame/projectile/shoot_loop

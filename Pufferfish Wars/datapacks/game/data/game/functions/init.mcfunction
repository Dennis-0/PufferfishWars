# Ran from #minecraft:load

setworldspawn 505 250 50
fill -30 0 -30 30 5 30 air replace stone

#scoreboard players set game_id game 1

## Scoreboard objectives
# General 
scoreboard objectives add game dummy
scoreboard objectives add explosion dummy
scoreboard objectives add damage dummy
scoreboard objectives add count dummy
scoreboard objectives add player_order dummy
scoreboard objectives add points dummy
scoreboard objectives add money dummy
scoreboard objectives add health health
scoreboard objectives add health_start dummy
scoreboard objectives add health_end dummy

scoreboard objectives add multishot dummy
scoreboard objectives add scatter dummy
scoreboard objectives add shower dummy
scoreboard objectives add lightning dummy
scoreboard objectives add buy_armor dummy
scoreboard objectives add buy_health dummy
scoreboard objectives add buy_power dummy
scoreboard objectives add buy_move dummy
scoreboard objectives add buy_jump dummy
scoreboard objectives add buy_elytra dummy

scoreboard players set #cost multishot 10
scoreboard players set #cost scatter 20
scoreboard players set #cost shower 20
scoreboard players set #cost lightning 20
scoreboard players set #cost buy_armor 20
scoreboard players set #cost buy_health 10
scoreboard players set #cost buy_power 10
scoreboard players set #cost buy_move 10
scoreboard players set #cost buy_jump 10
scoreboard players set #cost buy_elytra 100

scoreboard players set #goal points 250

scoreboard objectives add game_id dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard players set #wind_factor game 99

# Movement Detection
scoreboard objectives add move_add dummy
scoreboard objectives add move_total dummy
scoreboard objectives add move_max dummy
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add jump_temp minecraft.custom:minecraft.jump
scoreboard players set #multiplier jump 100

scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm

# Shooting Power
scoreboard objectives add power dummy
scoreboard objectives add power_up minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add power_down minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add power_max dummy
scoreboard players set #multiplier power 5
scoreboard players set #xp power_max 20

# Terrain Generation
scoreboard objectives add generate_timer dummy
scoreboard objectives add terrain dummy

scoreboard objectives setdisplay list points

# Triggers
scoreboard objectives add tutorial trigger {"text":"Tutorial"}
scoreboard objectives add start_cancel trigger {"text":"Start Cancel"}
scoreboard objectives add end_round trigger {"text":"End Round"}
scoreboard objectives add end_confirm trigger {"text":"End Confirm"}
scoreboard objectives add end_cancel trigger {"text":"End Cancel"}
scoreboard objectives add reset_game trigger {"text":"Reset Game"}
scoreboard objectives add reset_confirm trigger {"text":"Reset Confirm"}
scoreboard objectives add reset_cancel trigger {"text":"Reset Cancel"}

## Teams
# Projectile Collision
team add noCollision
team modify noCollision collisionRule never

# Player/Pufferfish Colors
team add Red
team add Orange
team add Yellow
team add Lime
team add Green
team add Cyan
team add Aqua
team add Blue
team add Purple
team add Pink
team add Black
team add White
team add Spectator

team modify Red color red
team modify Orange color gold
team modify Yellow color yellow
team modify Lime color green
team modify Green color dark_green
team modify Cyan color dark_aqua
team modify Aqua color aqua
team modify Blue color blue
team modify Purple color dark_purple
team modify Pink color light_purple
team modify White color white
team modify Spectator color dark_gray

## bossbar
bossbar add players [{"selector":"@a[tag=turn]"},{"text":"'s turn - Players left: ","color":"gray"},{"score":{"name":"#players_left","objective":"game"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"#players_total","objective":"game"},"color":"white"}]
bossbar set players color blue

bossbar add wind [{"text":"Wind: "},{"score":{"name":"wind_power","objective":"game"},"color":"white"},{"text":" East!"}]
bossbar set wind color white
bossbar set wind max 100
bossbar set wind style notched_20

bossbar add move [{"text":"Movement remaining","color":"green"}]
bossbar set move color green
bossbar set move max 100

## Default options
scoreboard players set glowing game 1
scoreboard players set wind game 0
scoreboard players set trees game 0

# options
setblock 50 51 50 dispenser[facing=up]{CustomName:'{"text":"Options","bold":false,"color":"black"}'}
function game:lobby/options

#/execute align xyz run summon armor_stand ~.5 ~.4 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"/trigger end_round"}',CustomNameVisible:1b}
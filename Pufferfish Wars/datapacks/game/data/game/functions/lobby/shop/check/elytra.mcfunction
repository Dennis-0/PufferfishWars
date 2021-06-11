# Ran from game:lobby/main

execute unless score @s money >= #cost buy_elytra run function game:lobby/shop/fail
execute if score @s money >= #cost buy_elytra run function game:lobby/shop/buy/elytra

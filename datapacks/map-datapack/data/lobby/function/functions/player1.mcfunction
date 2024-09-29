execute unless score player1.button button.state matches 0 if entity @a[predicate=lobby:looking_at/player1] run return 0

execute as @a[predicate=lobby:looking_at/player1] run title @s actionbar "Switch player"

execute if score player1.button button.state matches 0 as @a[predicate=lobby:looking_at/player1] at @s run playsound block.metal_pressure_plate.click_on ambient @s ~ ~ ~ 1 1.98
execute if score player1.button button.state matches 0 as @a[predicate=lobby:looking_at/player1] at @s run playsound block.note_block.chime ambient @s ~ ~ ~ 1 1.5

execute as @s on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.9f,0f],scale:[1.6f,1.6f,1.6f]}}

execute unless score player1.button button.state matches 1 run return run scoreboard players set player1.button button.state 1
execute if score player1.button button.state matches 1 run return run scoreboard players set player1.button button.state 0
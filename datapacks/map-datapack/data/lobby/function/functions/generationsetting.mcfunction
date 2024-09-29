execute unless score generationsetting.button button.state matches 0 if entity @a[predicate=lobby:looking_at/generationsetting] run return 0

execute as @a[predicate=lobby:looking_at/generationsetting] run title @s actionbar "Change generation mode"

execute if score generationsetting.button button.state matches 0 as @a[predicate=lobby:looking_at/generationsetting] at @s run playsound block.metal_pressure_plate.click_on ambient @s ~ ~ ~ 1 1.98
execute if score generationsetting.button button.state matches 0 as @a[predicate=lobby:looking_at/generationsetting] at @s run playsound block.note_block.chime ambient @s ~ ~ ~ 1 1.5

execute as @n[type=text_display,tag=generation.setting] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]}}

execute unless score generationsetting.button button.state matches 1 run return run scoreboard players set generationsetting.button button.state 1
execute if score generationsetting.button button.state matches 1 run return run scoreboard players set generationsetting.button button.state 0
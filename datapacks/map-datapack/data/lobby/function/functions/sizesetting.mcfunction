execute unless score sizesetting.button button.state matches 0 if entity @a[predicate=lobby:looking_at/sizesetting] run return 0

execute as @a[predicate=lobby:looking_at/sizesetting] run title @s actionbar "Change map size"

execute if score sizesetting.button button.state matches 0 as @a[predicate=lobby:looking_at/sizesetting] at @s run playsound block.metal_pressure_plate.click_on ambient @s ~ ~ ~ 1 1.98
execute if score sizesetting.button button.state matches 0 as @a[predicate=lobby:looking_at/sizesetting] at @s run playsound block.note_block.chime ambient @s ~ ~ ~ 1 1.5

execute as @n[type=text_display,tag=size.setting] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]}}

execute unless score sizesetting.button button.state matches 1 run return run scoreboard players set sizesetting.button button.state 1
execute if score sizesetting.button button.state matches 1 run return run scoreboard players set sizesetting.button button.state 0
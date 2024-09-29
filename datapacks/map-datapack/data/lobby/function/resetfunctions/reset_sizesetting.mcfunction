scoreboard players set sizesetting.button button.state 0
execute at @n[tag=size.setting,type=interaction] as @n[type=text_display,tag=size.setting] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}

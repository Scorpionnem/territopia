scoreboard players set player4.button button.state 0
execute as @n[tag=player4,type=interaction] on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.9f,0f],scale:[1.5f,1.5f,1.5f]}}

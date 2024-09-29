advancement revoke @s only general:left_click



tag @s add this
execute as @e[type=interaction] run function general:interaction/find_attacked
tag @s remove this
advancement revoke @s only general:right_click



tag @s add this
execute as @e[type=interaction] run function general:interaction/find_targeted
tag @s remove this
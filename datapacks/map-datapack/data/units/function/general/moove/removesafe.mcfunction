execute as @e[tag=select,tag=safe,tag=select_green] on vehicle run tag @s add select_moove
execute as @e[tag=!safe,tag=select,tag=select_green] on vehicle run tag @s remove select_moove

execute as @e[tag=select,tag=safe,tag=select_red] on vehicle run tag @s add select_attack
execute as @e[tag=!safe,tag=select,tag=select_red] on vehicle run tag @s remove select_attack

kill @e[tag=select,tag=!safe]
tag @e remove safe
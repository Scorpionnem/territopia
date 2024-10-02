execute as @e[tag=select_green] on vehicle run tag @s remove select_moove
execute as @e[tag=select_red] on vehicle run tag @s remove select_attack


kill @e[tag=select]
tag @s remove selected_tile
scoreboard players set @s unit.select 0

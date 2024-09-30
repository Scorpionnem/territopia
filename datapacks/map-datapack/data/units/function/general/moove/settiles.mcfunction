
$scoreboard players set position radius $(movementrange)
execute store result storage unit radius int 1 run scoreboard players get position radius
scoreboard players operation position radius += position radius
execute store result storage unit positioned1 int 1 run scoreboard players get position radius
scoreboard players operation position radius += 2 radius
execute store result storage unit positioned2 int 1 run scoreboard players get position radius


function units:general/moove/radius with storage unit



function units:general/moove/setgreen

tag @n[tag=select] add thisitems
execute as @n[tag=select] at @s run function units:general/moove/group_close
execute as @n[tag=select] at @s run function units:general/moove/group
tag @s remove thisitems
execute as @e[tag=select_green] on vehicle run tag @s add select_moove

execute as @e[tag=!safe,tag=select] on vehicle run tag @s remove select_moove
kill @e[tag=select,tag=!safe]
tag @e remove safe
execute at @s run kill @n[tag=select_green]
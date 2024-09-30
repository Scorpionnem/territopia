#: This function groups the selectable tiles around the unit to not cross oceans for example
tag @s add safe

execute as @n[tag=tile] if entity @s[tag=mountains,tag=!thisitems] run return 0
#execute as @n[tag=tile] if entity @s[tag=unit,tag=!thisitems] run return 0



execute positioned ~ ~ ~2 as @e[tag=select,tag=!safe,distance=..0.5,tag=!thisitems] run function units:general/moove/group
execute positioned ~ ~ ~-2 as @e[tag=select,tag=!safe,distance=..0.5,tag=!thisitems] run function units:general/moove/group
execute positioned ~2 ~ ~ as @e[tag=select,tag=!safe,distance=..0.5,tag=!thisitems] run function units:general/moove/group
execute positioned ~-2 ~ ~ as @e[tag=select,tag=!safe,distance=..0.5,tag=!thisitems] run function units:general/moove/group

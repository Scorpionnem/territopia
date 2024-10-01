#: This function groups the selectable tiles around the unit to not cross oceans for example
tag @s add safe

execute as @n[tag=tile] if entity @s[tag=mountains] run return 0
execute as @n[tag=tile] if score @n[tag=unit,type=item_display] unit.boatlevel matches 1.. if entity @s[tag=plains] run return 0
execute as @n[tag=tile] if score @n[tag=unit,type=item_display] unit.boatlevel matches 1.. if entity @s[tag=forest] run return 0




execute positioned ~ ~ ~2 as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat
execute positioned ~ ~ ~-2 as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat
execute positioned ~2 ~ ~ as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat
execute positioned ~-2 ~ ~ as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat

execute positioned ~2 ~ ~2 as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat
execute positioned ~-2 ~ ~-2 as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat
execute positioned ~2 ~ ~-2 as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat
execute positioned ~-2 ~ ~2 as @e[tag=select,tag=!safe,distance=..0.5] run function units:general/moove/group_boat

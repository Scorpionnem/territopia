#: This functions allows to cross diagonals when close enough
execute positioned ~2 ~ ~2 as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe
execute positioned ~-2 ~ ~-2 as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe
execute positioned ~2 ~ ~-2 as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe
execute positioned ~-2 ~ ~2 as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe

execute on vehicle unless entity @s[tag=mountains] run return 0

execute positioned ~ ~ ~2 as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe
execute positioned ~ ~ ~-2 as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe
execute positioned ~2 ~ ~ as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe
execute positioned ~-2 ~ ~ as @e[tag=select,tag=!safe,distance=..0.5] run tag @s add safe

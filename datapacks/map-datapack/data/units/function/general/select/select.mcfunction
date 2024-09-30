execute as @e[tag=selected_tile] run return run function units:general/select/unselect
#execute if score @s unit.select matches 1 run return run function units:general/select/unselect
scoreboard players set @s unit.select 1

tag @s add selected_tile


#: Stores the ranges of the unit
execute on passengers store result storage unit attackrange int 1 run scoreboard players get @s unit.attackrange
execute on passengers store result storage unit movementrange int 1 run scoreboard players get @s unit.movementrange

execute as @s at @s run function units:general/moove/settiles with storage minecraft:unit
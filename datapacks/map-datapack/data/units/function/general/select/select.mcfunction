execute as @e[tag=selected_tile] run return run function units:general/select/unselect

execute as @s on passengers if score @s[tag=unit] unit.moovesleft matches 0 run return run function units:general/select/unselect

$execute on passengers as @s[tag=!player$(currentplayer),tag=unit] run return fail


scoreboard players set @s unit.select 1

tag @s add selected_tile

execute as @e[tag=tile,tag=unit] unless function units:general/checks/checkunit run tag @s remove unit

#: Stores the ranges of the unit
execute on passengers store result storage unit attackrange int 1 run scoreboard players get @s unit.attackrange
execute on passengers store result storage unit movementrange int 1 run scoreboard players get @s unit.movementrange

execute as @s at @s run function units:general/moove/settiles with storage minecraft:unit
#: This function will make the radius of selectable tiles around the unit
#:For example this is with radius 1 : X = unit, O = selectable tile
#:OOO
#:OXO
#:OOO
execute if score tempvalue1 radius = value radius run return 1

$execute positioned ~$(tempvalue2) ~ ~$(tempvalue1) run tag @e[tag=tile,distance=0] add radius

execute if score tempvalue2 radius = value radius run scoreboard players add tempvalue1 radius 2
execute if score tempvalue2 radius = value radius run scoreboard players set tempvalue2 radius 0
scoreboard players add tempvalue2 radius 2

execute store result storage unit tempvalue1 int 1 run scoreboard players get tempvalue1 radius
execute store result storage unit tempvalue2 int 1 run scoreboard players get tempvalue2 radius


function units:general/moove/radiusloop with storage unit
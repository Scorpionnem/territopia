#: This function stores all the data for radiusloop.mcfunction
$scoreboard players set value radius $(radius)
scoreboard players operation value radius += value radius
scoreboard players add value radius 1
scoreboard players operation value radius *= 2 radius

scoreboard players set tempvalue1 radius 0
scoreboard players set tempvalue2 radius 2

execute store result storage unit tempvalue1 int 1 run scoreboard players get tempvalue1 radius
execute store result storage unit tempvalue2 int 1 run scoreboard players get tempvalue2 radius

$execute positioned ~-$(positioned2) ~ ~-$(positioned1) run function units:general/moove/radiusloop with storage unit
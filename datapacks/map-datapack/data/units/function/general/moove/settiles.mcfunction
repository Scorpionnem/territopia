###: HANDLES MOVEMENT TILES :###

#: Initialise radius
$scoreboard players set position radius $(movementrange)
execute store result storage unit radius int 1 run scoreboard players get position radius
scoreboard players operation position radius += position radius
execute store result storage unit positioned1 int 1 run scoreboard players get position radius
scoreboard players operation position radius += 2 radius
execute store result storage unit positioned2 int 1 run scoreboard players get position radius

#: Adds tag radius to entities in the defined radius
function units:general/moove/radius with storage unit
#: Sets the item display on all tiles in radius
function units:general/moove/setgreen

#: Groups selected tiles together to only keep tiles connected to the main tile.
execute as @n[tag=select] at @s run function units:general/moove/group_close
execute if score @n[tag=unit,type=item_display] unit.boatlevel matches 0 as @n[tag=select] at @s run function units:general/moove/group
execute if score @n[tag=unit,type=item_display] unit.boatlevel matches 1.. as @n[tag=select] at @s run function units:general/moove/group_boat

#: Removes unselected tiles
function units:general/moove/removesafe

#: Removes tile on the unit
execute at @s run kill @n[tag=select_green]
tag @s remove select_moove

tag @s add nothisone
execute as @e[tag=tile,tag=unit,tag=!nothisone] at @s run function units:general/moove/removeonunits
tag @s remove nothisone
###: HANDLES MOVEMENT TILES :###





###: HANDLES ATTACK TILES :###
#: Initialise radius
$scoreboard players set position radius $(attackrange)
execute store result storage unit radius int 1 run scoreboard players get position radius
scoreboard players operation position radius += position radius
execute store result storage unit positioned1 int 1 run scoreboard players get position radius
scoreboard players operation position radius += 2 radius
execute store result storage unit positioned2 int 1 run scoreboard players get position radius

#: Adds tag radius to entities in the defined radius
function units:general/moove/radius with storage unit
#: Sets the item display on all tiles in radius

function units:general/attack/setred



#: Groups selected tiles together to only keep tiles connected to the main tile.
execute as @n[tag=select] at @s run function units:general/moove/group_close
execute if score @n[tag=unit,type=item_display] unit.boatlevel matches 0 as @n[tag=select] at @s run function units:general/moove/group
execute if score @n[tag=unit,type=item_display] unit.boatlevel matches 1.. as @n[tag=select] at @s run function units:general/moove/group_boat

#: Removes unselected tiles
function units:general/moove/removesafe

#: Removes tile on the unit
execute as @e[tag=select_attack] at @s run function units:general/attack/remove with storage game


###: HANDLES ATTACK TILES :###
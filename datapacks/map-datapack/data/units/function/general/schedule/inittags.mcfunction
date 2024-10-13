scoreboard players set @s scheduleid 0
execute as @e if score @s thistileid = global thistileid run tag @s add thistile
function units:general/attack/attackback
execute as @e if score @s thistileid = global thistileid run tag @s remove thistile
scoreboard players set value blockinteraction 0
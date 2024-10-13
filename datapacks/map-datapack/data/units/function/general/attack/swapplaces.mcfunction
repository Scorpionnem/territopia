execute if score canswap swapplaces matches 0 run return fail
execute if score @s unit.boatlevel matches 1.. run return 0
say swapping
execute on vehicle run tag @s remove unit
ride @s dismount

execute at @n[tag=tempswap] run tp @s ~ ~ ~
execute at @n[tag=tempswap] run tp @s ~ ~ ~

execute at @n[tag=tempswap] run ride @s mount @n[tag=tile]
execute on vehicle run tag @s add unit
kill @e[tag=tempswap]
function board:fog/remove_fog_around_unit with storage game
#: Keeps info of the selected unit with tag
execute as @e[tag=selected_tile] on passengers run tag @s[tag=unit] add thistile

execute as @e[tag=selected_tile] on passengers run ride @s[tag=unit] dismount

scoreboard players remove @n[tag=thistile] unit.moovesleft 1

tag @s add lookatme
execute at @n[tag=thistile] run tp @n[tag=thistile] ~ ~ ~ facing entity @n[tag=lookatme]
execute as @n[tag=thistile] at @s on passengers run tp @s ~ ~ ~ facing entity @n[tag=lookatme]
tag @s remove lookatme
tp @n[tag=thistile] ~ ~ ~
ride @n[tag=thistile] mount @s

#: Removes boat level when going on land
execute as @s at @s run function units:general/modifiers/removeboat

execute as @s at @s run function units:general/checks/check_block_mooved

tag @e[tag=thistile] remove thistile

execute as @e[tag=selected_tile] run tag @s remove unit
tag @s add unit

execute as @e[tag=selected_tile] run function units:general/select/unselect
function board:fog/remove_fog_around_unit with storage game
#: Keeps info of the selected unit with tag
execute as @e[tag=selected_tile] on passengers run tag @s[tag=unit] add thistile

execute as @e[tag=selected_tile] on passengers run ride @s[tag=unit] dismount

tag @s add lookatme
execute at @n[tag=thistile] run tp @n[tag=thistile] ~ ~ ~ facing entity @n[tag=lookatme]
tag @s remove lookatme
tp @n[tag=thistile] ~ ~ ~
ride @n[tag=thistile] mount @s

#: Removes boat level when going on land
execute as @s at @s run function units:general/modifiers/removeboat

tag @e[tag=thistile] remove thistile

execute as @e[tag=selected_tile] run tag @s remove unit
tag @s add unit

execute as @e[tag=selected_tile] run function units:general/select/unselect
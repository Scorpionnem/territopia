#: Keeps info of the selected unit with tag

execute as @e[tag=selected_tile] on passengers run tag @s[tag=unit] add thistile

scoreboard players remove @n[tag=thistile] unit.moovesleft 1

execute on passengers run tag @s[tag=unit] add lookatme
execute at @n[tag=thistile] run tp @n[tag=thistile] ~ ~ ~ facing entity @n[tag=lookatme]
execute at @n[tag=thistile] run tp @n[tag=playerhead] ~ ~ ~ facing entity @n[tag=lookatme]

scoreboard players operation @n[tag=lookatme] unit.health -= @n[tag=thistile] unit.attack
execute as @n[tag=thistile] at @s positioned ~ ~2.5 ~ run particle sweep_attack
execute as @n[tag=thistile] at @s run playsound entity.player.attack.sweep ambient @a ~ ~ ~

execute as @n[tag=lookatme] if score @s unit.health matches ..0 run function units:general/died


tag @e[tag=lookatme] remove lookatme

tag @e[tag=thistile] remove thistile

execute as @e[tag=selected_tile] run function units:general/select/unselect
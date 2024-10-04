#: Keeps info of the selected unit with tag

execute as @e[tag=selected_tile] on passengers run tag @s[tag=unit] add thistile

scoreboard players remove @n[tag=thistile] unit.moovesleft 1

execute on passengers run tag @s[tag=unit] add lookatme
execute at @n[tag=thistile] run tp @n[tag=thistile] ~ ~ ~ facing entity @n[tag=lookatme]
execute at @n[tag=thistile] run tp @n[tag=playerhead] ~ ~ ~ facing entity @n[tag=lookatme]

scoreboard players operation @n[tag=lookatme] unit.health -= @n[tag=thistile] unit.attack
execute as @n[tag=thistile] at @s positioned ~ ~2.5 ~ run particle sweep_attack
execute as @n[tag=thistile] at @s run playsound entity.player.attack.sweep ambient @a ~ ~ ~

scoreboard players set value swapplaces 0
scoreboard players set canswap swapplaces 0
execute as @n[tag=lookatme] if score @s unit.health matches ..0 run scoreboard players set value swapplaces 1
execute at @s if score value swapplaces matches 1 if entity @n[tag=lookatme,distance=..3] run scoreboard players set canswap swapplaces 1
execute if score value swapplaces matches 1 as @n[tag=lookatme] at @s run summon marker ~ ~ ~ {Tags:[tempswap]}
execute as @n[tag=lookatme] if score value swapplaces matches 1 run function units:general/died
execute if score value swapplaces matches 1 as @n[tag=thistile] at @s run function units:general/attack/swapplaces


execute as @n[tag=lookatme] at @s if score @s unit.health matches 1.. run function units:general/attack/attackback

tag @e[tag=lookatme] remove lookatme

tag @e[tag=thistile] remove thistile

execute as @e[tag=selected_tile] run function units:general/select/unselect
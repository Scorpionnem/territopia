scoreboard players set @s ocean.count 0
tag @s add this

execute positioned ~-2 ~ ~ if entity @e[tag=forest,distance=0] run scoreboard players add @n[tag=this] ocean.count 1
execute positioned ~2 ~ ~ if entity @e[tag=forest,distance=0] run scoreboard players add @n[tag=this] ocean.count 1
execute positioned ~ ~ ~2 if entity @e[tag=forest,distance=0] run scoreboard players add @n[tag=this] ocean.count 1
execute positioned ~ ~ ~-2 if entity @e[tag=forest,distance=0] run scoreboard players add @n[tag=this] ocean.count 1

execute positioned ~-2 ~ ~ if entity @e[tag=plains,distance=0] run scoreboard players add @n[tag=this] ocean.count 1
execute positioned ~2 ~ ~ if entity @e[tag=plains,distance=0] run scoreboard players add @n[tag=this] ocean.count 1
execute positioned ~ ~ ~2 if entity @e[tag=plains,distance=0] run scoreboard players add @n[tag=this] ocean.count 1
execute positioned ~ ~ ~-2 if entity @e[tag=plains,distance=0] run scoreboard players add @n[tag=this] ocean.count 1

tag @s remove this

execute if score @s ocean.count matches ..1 run return fail
tag @s add ocean
tag @s remove deep_ocean

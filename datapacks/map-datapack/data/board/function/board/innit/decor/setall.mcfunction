execute if entity @s[tag=decorated] run return 1

tag @s add this
execute as @n[tag=tile,tag=decorated] store result score @n[tag=this] nearest.decor run scoreboard players get @s random.decor

execute as @s if score @s nearest.decor matches 1 store result score @s random.decor run random value 1..4
execute as @s if score @s nearest.decor matches 2 store result score @s random.decor run random value 1..2
execute as @s if score @s nearest.decor matches 3 store result score @s random.decor run random value 1..4
$execute as @s if score @s nearest.decor matches 4 store result score @s random.decor run random value $(value)..5
execute as @s if score @s nearest.decor matches 5 store result score @s random.decor run random value 4..5

execute if score @s random.decor matches 1 run tag @s[tag=!decorated] add plains
execute if score @s random.decor matches 2 run tag @s[tag=!decorated] add forest
execute if score @s random.decor matches 3 run tag @s[tag=!decorated] add mountains
execute if score @s random.decor matches 4 run tag @s[tag=!decorated] add ocean
execute if score @s random.decor matches 5 run tag @s[tag=!decorated] add deep_ocean
tag @s add decorated
execute as @s at @s positioned ~ ~ ~2 as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall with storage minecraft:generation
execute as @s at @s positioned ~2 ~ ~ as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall with storage minecraft:generation
execute as @s at @s positioned ~ ~ ~-2 as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall with storage minecraft:generation
execute as @s at @s positioned ~-2 ~ ~ as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall with storage minecraft:generation
execute as @s[tag=!fulldeco] at @s run function board:board/innit/decor/decor
tag @s remove this
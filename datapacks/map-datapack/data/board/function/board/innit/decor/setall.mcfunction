execute if entity @s[tag=decorated] at @s run return 0

tag @s add this
tag @s add decorated

#: fetch nearest decor
execute store result score @s nearest.decor run scoreboard players get @n[tag=tile,tag=decorated,tag=!this] random.decor


#: plains/forest/mountains generation results
execute if score @s nearest.decor matches 1..3 store result score @s random.decor run random value 1..4
execute if score @s nearest.decor matches 2 store result score @s random.decor run random value 1..2

#: deep_ocean generation results
execute if score @s nearest.decor matches 5 store result score @s random.decor run random value 4..5

#: continental generation settings results
execute if score generation settings matches 0 if score @s nearest.decor matches 4 store result score @s random.decor run random value 2..5

#: aquatic generation settings results
execute if score generation settings matches 1 if score @s nearest.decor matches 4 store result score @s random.decor run random value 3..5

#: decor tags
execute if score @s random.decor matches 1 run tag @s add plains
execute if score @s random.decor matches 2 run tag @s add forest
execute if score @s random.decor matches 3 run tag @s add mountains
execute if score @s random.decor matches 4 run tag @s add ocean
execute if score @s random.decor matches 5 run tag @s add deep_ocean

tag @s remove this

#: decorate adjacent tiles
execute at @s positioned ~ ~ ~2 as @n[tag=tile,tag=!decorated] at @s run function board:board/innit/decor/setall
execute at @s positioned ~ ~ ~-2 as @n[tag=tile,tag=!decorated] at @s run function board:board/innit/decor/setall
execute at @s positioned ~2 ~ ~ as @n[tag=tile,tag=!decorated] at @s run function board:board/innit/decor/setall
execute at @s positioned ~-2 ~ ~ as @n[tag=tile,tag=!decorated] at @s run function board:board/innit/decor/setall

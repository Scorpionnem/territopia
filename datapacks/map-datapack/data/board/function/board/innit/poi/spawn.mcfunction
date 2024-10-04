#Rolls a random value to know wich POI to pick
execute as @s[tag=plains] store result score @s random.poi run random value 1..4
execute as @s[tag=forest] store result score @s random.poi run random value 1..6
execute as @s[tag=mountains] store result score @s random.poi run random value 1..5
execute as @s[tag=ocean] store result score @s random.poi run random value 1..4
execute as @s[tag=deep_ocean] store result score @s random.poi run random value 1..10

#execute as @s[tag=plains] if score @s random.poi matches 1 store result score @s random.poi.village run random value 1..2
#execute as @s[tag=plains] if score @s random.poi matches 1 if score @s random.poi.village matches 2 run tag @s add empty
execute as @s[tag=plains] if score @s random.poi matches 1..2 run tag @s add village
execute as @s[tag=plains] if score @s random.poi matches 3 run tag @s add fruit
execute as @s[tag=plains] if score @s random.poi matches 4 run tag @s add farm

execute as @s[tag=forest] if score @s random.poi matches 1..5 run tag @s add empty
execute as @s[tag=forest] if score @s random.poi matches 6 run tag @s add hunt

execute as @s[tag=mountains] if score @s random.poi matches 1..2 run tag @s add empty
execute as @s[tag=mountains] if score @s random.poi matches 4..5 run tag @s add ore_vein

execute as @s[tag=ocean] if score @s random.poi matches 1..3 run tag @s add empty
execute as @s[tag=ocean] if score @s random.poi matches 4 run tag @s add fish

execute as @s[tag=deep_ocean] if score @s random.poi matches 1..9 run tag @s add empty
execute as @s[tag=deep_ocean] if score @s random.poi matches 10 run tag @s add whale

tag @s add poime
#execute as @s at @s run function board:board/innit/poi/decorate
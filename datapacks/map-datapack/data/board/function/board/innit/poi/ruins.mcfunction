execute as @s store result score @s random.poi run random value 1..30

execute if score @s random.poi matches 1..29 run return fail
tag @s remove empty
tag @s add ruins
execute at @s run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":14}},brightness:{sky:15,block:15}}
ride @n[tag=poi] mount @s
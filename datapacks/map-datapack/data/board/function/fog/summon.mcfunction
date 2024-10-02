execute at @e[tag=tile] run summon item_display ~ ~ ~ {Tags:["fog"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.1f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":11}},brightness:{sky:15,block:15}}
execute as @e[tag=tile] at @s run ride @n[tag=fog] mount @s

tag @e[tag=tile] add fog
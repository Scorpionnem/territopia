#: Summons item displays
execute at @e[tag=radius,tag=unit,tag=!fog] run summon item_display ~ ~ ~ {width:1.5f,Tags:["select_red","select","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":16}},brightness:{sky:15,block:15}}

#: Rides the item display on its interaction
execute as @e[tag=select,tag=temp] at @s run ride @s mount @n[tag=tile]
tag @e[tag=temp] remove temp

tag @e remove radius
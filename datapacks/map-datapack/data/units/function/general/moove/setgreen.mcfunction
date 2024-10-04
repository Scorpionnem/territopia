#: Summons item displays
execute at @e[tag=radius,tag=!mountains,tag=!ocean,tag=!deep_ocean,tag=!fog] run summon item_display ~ ~ ~ {width:1.5f,Tags:["select_green","select","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":15}},brightness:{sky:15,block:15}}
execute at @e[tag=radius,tag=ocean,tag=!fog,tag=port] run summon item_display ~ ~ ~ {width:1.5f,Tags:["select_green","select","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":15}},brightness:{sky:15,block:15}}

#: Handles if unit can climb mountains
execute on passengers if score @s unit.canclimbmountains matches 1 at @e[tag=radius,tag=mountains,tag=!fog] run summon item_display ~ ~ ~ {width:1.5f,Tags:["select_green","select","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":15}},brightness:{sky:15,block:15}}

#: Handles if its a lvl1 boat
execute on passengers if score @s unit.boatlevel matches 1.. at @e[tag=radius,tag=ocean,tag=!fog] run summon item_display ~ ~ ~ {width:1.5f,Tags:["select_green","select","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":15}},brightness:{sky:15,block:15}}

#: Handles if its a lvl2 boat
execute on passengers if score @s unit.boatlevel matches 3.. at @e[tag=radius,tag=deep_ocean,tag=!fog] run summon item_display ~ ~ ~ {width:1.5f,Tags:["select_green","select","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":15}},brightness:{sky:15,block:15}}

#: Rides the item display on its interaction
execute as @e[tag=select,tag=temp] at @s run ride @s mount @n[tag=tile]
tag @e[tag=temp] remove temp

tag @e remove radius
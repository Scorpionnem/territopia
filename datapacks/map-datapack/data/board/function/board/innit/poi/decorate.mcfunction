tag @s remove poime
execute at @s[tag=empty] run return 0

execute at @s[tag=village] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":13}},brightness:{sky:15,block:15}}

execute at @s[tag=fruit] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":10}},brightness:{sky:15,block:15}}

execute at @s[tag=farm] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":9}},brightness:{sky:15,block:15}}

execute at @s[tag=hunt] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:beef",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=ore_vein] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:gold_ore",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=fish] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":6}},brightness:{sky:15,block:15}}

execute at @s[tag=whale] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":12}},brightness:{sky:15,block:15}}

execute at @s run ride @n[tag=poi] mount @s[tag=!empty]


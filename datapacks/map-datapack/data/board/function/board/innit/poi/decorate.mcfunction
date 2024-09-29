execute at @s[tag=empty] run return 0

execute at @s[tag=village] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:villager_spawn_egg",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=fruit] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:apple",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=farm] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:wheat",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=hunt] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:beef",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=mine] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:gold_ore",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=fish] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:cod",count:1},brightness:{sky:15,block:15}}

execute at @s[tag=whale] run summon item_display ~ ~ ~ {Tags:["poi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:salmon",count:1},brightness:{sky:15,block:15}}

execute at @s run ride @n[tag=poi] mount @s[tag=!empty]

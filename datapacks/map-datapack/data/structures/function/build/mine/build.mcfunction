
summon item_display ~ ~ ~ {Tags:["port","structure"],item:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":18}}}
ride @n[tag=port] mount @s

tag @s add mine
tag @s add structure

tag @s add checkvillage
execute as @e[tag=capturedvillage] if score @s village.id = @n[tag=checkvillage] village.id at @s run function structures:build/village/addxp {xp:2}
tag @s remove checkvillage
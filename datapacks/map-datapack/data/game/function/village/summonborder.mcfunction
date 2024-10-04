#TOP
execute positioned ~ ~ ~-2 if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":21}}}

#BOTTOM
execute positioned ~ ~ ~2 if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":22}}}

#LEFT
execute positioned ~-2 ~ ~ if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":23}}}

#RIGHT
execute positioned ~2 ~ ~ if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":24}}}

#TOP LEFT
execute positioned ~-2 ~ ~-2 if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":26}}}

#TOP RIGHT
execute positioned ~2 ~ ~-2 if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":25}}}

#BOTTOM LEFT
execute positioned ~-2 ~ ~2 if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":27}}}

#BOTTOM RIGHT
execute positioned ~2 ~ ~2 if entity @e[tag=initcapture,distance=0] run summon item_display ~ ~ ~ {Tags:["village.border","idtemp"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":28}}}

execute as @e[tag=village.border] run scoreboard players operation @s village.id = @n[tag=village,tag=villagebordertemp] village.id

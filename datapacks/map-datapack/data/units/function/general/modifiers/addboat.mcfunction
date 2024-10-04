execute on passengers if entity @s[tag=boat] run return 0
scoreboard players set @s unit.boatlevel 1
execute at @s run summon item_display ~ ~ ~ {Tags:["boat","unit"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":19}}}
execute as @s at @s run ride @n[tag=boat] mount @s
scoreboard players set @s unit.moovesleft 0
scoreboard players operation @s unit.savemovementrange = @s unit.movementrange
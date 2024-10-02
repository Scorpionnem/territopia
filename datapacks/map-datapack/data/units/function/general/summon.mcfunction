execute as @n[tag=village] if score @s village.unitscount = @s village.maxunitscount run return fail

#: makes a system to summon any unit with 1 function.
$execute at @n[tag=tile] run summon item_display ~ ~ ~ {Tags:["unit","$(name)","$(player)"],width:1.5f,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":8}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}}
$scoreboard players set @n[tag=unit] unit.attack $(attack)
$scoreboard players set @n[tag=unit] unit.attackrange $(attackrange)
$scoreboard players set @n[tag=unit] unit.movementrange $(movementrange)
$scoreboard players set @n[tag=unit] unit.health $(health)
$scoreboard players set @n[tag=unit] unit.boatlevel $(boatlevel)
$scoreboard players set @n[tag=unit] unit.canclimbmountains $(canclimbmountains)

execute at @n[tag=tile] run summon item_display ~ ~ ~ {Tags:["playerhead"],transformation:{left_rotation:[0f,180f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.15f,0f],scale:[1.4f,1.4f,1.4f]},item:{id:"minecraft:player_head",count:1}}
$execute as @a[tag=$(player)] run loot replace entity @n[tag=playerhead] container.0 loot lobby:player_head

ride @n[tag=playerhead] mount @n[tag=unit]

$scoreboard players set @n[tag=unit] unit.maxmooves $(maxmooves)
$scoreboard players set @n[tag=unit] unit.moovesleft $(moovesleft)


scoreboard players add global unit.id 1
scoreboard players operation @n[tag=unit] unit.id = global unit.id

scoreboard players operation @n[tag=unit] village.id = @n[tag=village] village.id
scoreboard players add @n[tag=village] village.unitscount 1

ride @n[tag=unit] mount @n[tag=tile]
tag @n[tag=tile] add unit


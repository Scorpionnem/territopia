#: Gives the village a unique ID
scoreboard players add global village.id 1
execute as @n[tag=village] run scoreboard players operation @s village.id = global village.id

scoreboard players set @n[tag=village] village.unitscount 0
scoreboard players set @n[tag=village] village.maxunitscount 2
scoreboard players set @n[tag=village] village.starsperturn 2

#: Tags the village with the player that captured it
$execute as @n[tag=village] run tag @s add player$(currentplayer)

#: Replaces the base village texture with captured village model
execute as @n[tag=village] on passengers run item replace entity @s[tag=poi] container.0 with paper[custom_model_data=17]

#: Tags the village
execute as @n[tag=village] run tag @s add capturedvillage
$execute on passengers as @s[tag=unit] if entity @s[tag=!player$(currentplayer)] run return 0

#: Gives the village a unique ID
tag @n[tag=village] remove village.cancapture
scoreboard players add global village.id 1
execute as @n[tag=village] run scoreboard players operation @s village.id = global village.id

#: Stops the unit that captured the village from mooving in the same turn
execute as @s if score value turn matches 1.. on passengers run scoreboard players set @s[tag=unit] unit.moovesleft 0

#: Sets all of the village's scoreboards
scoreboard players set @n[tag=village] village.unitscount 0
scoreboard players set @n[tag=village] village.maxunitscount 2
execute if score value turn matches 0 run scoreboard players set @n[tag=village] village.starsperturn 2
execute if score value turn matches 1.. run scoreboard players set @n[tag=village] village.starsperturn 1
$scoreboard players set @n[tag=village] village.idplayer $(currentplayer)
scoreboard players set @n[tag=village] village.level 0
scoreboard players set @n[tag=village] village.xp 0
scoreboard players set @n[tag=village] village.xp.nextlevel 2



#: Tags the village with the player that captured it
$execute as @n[tag=village] run tag @s add player$(currentplayer)

#: Replaces the base village texture with captured village model
execute as @n[tag=village] on passengers run item replace entity @s[tag=poi] container.0 with paper[custom_model_data=17]

execute as @n[tag=village] at @s run tag @e[tag=tile,distance=..3,tag=!village.land] add initcapture


tag @n[tag=village] add villagebordertemp
execute as @n[tag=village] at @s run function game:village/summonborder
tag @n[tag=village] remove villagebordertemp



execute as @e[tag=initcapture] run tag @s add village.land
execute as @e[tag=initcapture] run scoreboard players operation @s village.id = @n[tag=village] village.id
execute as @e[tag=initcapture] run scoreboard players operation @s village.idplayer = @n[tag=village] village.idplayer
$execute as @e[tag=initcapture] run scoreboard players add player$(currentplayer) score 20
execute as @e[tag=initcapture] at @s run function general:xp {xp:20,offset:2.3}

execute as @n[tag=village] at @s run tag @e[tag=initcapture] remove initcapture



execute at @n[tag=village] run function general:xp {xp:100,offset:2}
$scoreboard players add player$(currentplayer) score 100

#: Tags the village
execute as @n[tag=village] run tag @s add capturedvillage
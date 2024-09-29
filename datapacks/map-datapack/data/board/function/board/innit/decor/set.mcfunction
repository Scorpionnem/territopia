tag @s add decorated
tag @s add spawn
scoreboard players set @s random.decor 1

#execute as @s at @s positioned ~ ~ ~2 as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall
#execute as @s at @s positioned ~2 ~ ~ as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall
#execute as @s at @s positioned ~ ~ ~-2 as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall
#execute as @s at @s positioned ~-2 ~ ~ as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall

execute as @s[tag=!fulldeco] at @s run function board:board/innit/decor/decor
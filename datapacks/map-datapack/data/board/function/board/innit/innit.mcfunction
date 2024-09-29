
execute as @e[tag=tile] on passengers run kill @s
kill @e[tag=tile]
kill @e[tag=unit]

title @a actionbar "Generating..."

scoreboard players set value x 2
scoreboard players set value z 0


$data modify storage board x set value $(x)
$data modify storage board z set value $(z)

data modify storage board tempz set value 0
data modify storage board tempx set value 2

function board:board/innit/summon with storage board

#function board:board/innit/setbase_village
execute as @e[tag=tile,sort=random,limit=4] run function board:board/innit/decor/set
execute as @e[tag=tile,sort=random,limit=4] at @s positioned ~ ~ ~2 as @e[tag=!decorated,distance=0,tag=tile,tag=!plains,tag=!forest,tag=!mountains,tag=!ocean,tag=!deep_ocean,limit=1] at @s run function board:board/innit/decor/setall with storage minecraft:generation
scoreboard players set @e[tag=tile] button.state 0

execute as @e[tag=tile] run function board:board/innit/poi/spawn
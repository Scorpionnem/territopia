scoreboard players set state game 0
tellraw @a "End"
tag @a[tag=player1] remove currentplayer

execute as @e[tag=glowing] on passengers run data merge entity @s {Glowing:0b}
tag @e remove glowing

bossbar set minecraft:player1 visible false
bossbar set minecraft:player2 visible false
bossbar set minecraft:player3 visible false
bossbar set minecraft:player4 visible false

kill @e[tag=savelocation]

execute as @a run attribute @s minecraft:generic.gravity base set 0.08

clear @a

execute as @e[tag=tile] on passengers run data merge entity @s[tag=!fog] {view_range:1f}

tp @a 22 12 46

kill @e[tag=fog,type=item_display]
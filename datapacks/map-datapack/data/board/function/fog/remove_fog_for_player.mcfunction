tag @s remove fog
$scoreboard players add player$(currentplayer) score 5
execute at @s run function general:xp {xp:5,offset:2.6}
$tag @s add fog_player$(currentplayer)
execute on passengers run data merge entity @s[tag=fog] {view_range:0f}
execute on passengers run data merge entity @s[tag=!fog] {view_range:1f}

execute at @s run particle snowflake ~ ~ ~ .5 1 .5 .1 20 normal
execute at @s run playsound block.snow.break ambient @a ~ ~ ~
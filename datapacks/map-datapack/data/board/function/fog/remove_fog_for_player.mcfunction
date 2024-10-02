tag @s remove fog
$tag @s add fog_player$(currentplayer)
execute on passengers run data merge entity @s[tag=fog] {view_range:0f}
execute on passengers run data merge entity @s[tag=!fog] {view_range:1f}

execute at @s run particle snowflake ~ ~ ~ .5 1 .5 .1 20 normal
execute at @s run playsound block.snow.break ambient @a ~ ~ ~
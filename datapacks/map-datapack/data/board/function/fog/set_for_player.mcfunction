tag @e[tag=tile] add fog
$execute as @e[tag=fog_player$(currentplayer)] run tag @s remove fog

execute as @e[tag=fog,tag=tile] on passengers run data merge entity @s[tag=fog] {view_range:1f}
execute as @e[tag=fog,tag=tile] on passengers run data merge entity @s[tag=!fog] {view_range:0f}

$execute as @e[tag=fog_player$(currentplayer),tag=tile] on passengers run data merge entity @s[tag=fog] {view_range:0f}
$execute as @e[tag=fog_player$(currentplayer),tag=tile] on passengers run data merge entity @s[tag=!fog] {view_range:1f}
